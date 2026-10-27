import { spawn } from "node:child_process";
import { lstat, mkdir, mkdtemp, open, readFile, realpath, writeFile } from "node:fs/promises";
import { constants, homedir } from "node:os";
import { dirname, isAbsolute, join, relative, resolve } from "node:path";
import type { AgentTool } from "@earendil-works/pi-agent-core";
import { type AssistantMessage, getSupportedThinkingLevels } from "@earendil-works/pi-ai";
import { ModelRuntime } from "@earendil-works/pi-coding-agent";
import { type agent, graph, JuncoGraph, type MockAgent, schedules, syntax, tools, tracer } from "junco-agency";
import source from "./liveness.yml" with { type: "text" };

// Verified 2026-10-25: refreshed Pi catalog, saved github-copilot OAuth, both models support high.
// Refresh evidence: aborted=false, provider errors={} (catalog/auth checks made no model requests).
// https://developers.openai.com/api/docs/models/gpt-6.1-sol.md (official ID gpt-6.1-sol)
// https://www.anthropic.com/claude/opus (2026-09-22 release; Claude API ID claude-opus-5-5)
// https://docs.github.com/copilot/reference/ai-models/supported-models (both models GA)
// Copilot's exact refreshed catalog IDs are gpt-6.1-sol and claude-opus-5.5; no fallback models.
const verifier = { model: "github-copilot/gpt-6.1-sol", thinking: "high" } as const;
const reviewer = { model: "github-copilot/claude-opus-5.5", thinking: "high" } as const;
export const ladder: schedules.Ladder = {
  smol: verifier, low: verifier, med: verifier, high: reviewer, xhigh: reviewer,
};
export const document = syntax.parse(source);
schedules.validateLadder(ladder);

export type Verdict = { decision: "accept" | "revise" | "blocked"; feedback: string };
export type CounterReview = { disposition: "complete" | "revise" | "blocked"; feedback: string };
export type Counterexample = { bugId: string; file: string; function: string; line: number; counterexample: string };
export type RoundContext = {
  cwd: string;
  linux: string;
  ticl: string;
  output: string;
  /** This run's preflight directory: check.log, and checker/ with assumptions and library hashes. */
  sharedEvidence: string;
  feedback: string;
  verdict?: Verdict;
  counterReview?: CounterReview;
  decision?: Verdict["decision"];
  csv?: string;
};

/** Accept only the declared review decisions; prose is never an approval signal. */
export function reviewDecision(proof?: Verdict, counter?: CounterReview): Verdict["decision"] {
  if (!proof || !counter) throw new Error("Both reviewers must record a verdict");
  if (!["accept", "revise", "blocked"].includes(proof.decision) ||
      !["complete", "revise", "blocked"].includes(counter.disposition) ||
      typeof proof.feedback !== "string" || !proof.feedback.trim() ||
      typeof counter.feedback !== "string" || !counter.feedback.trim())
    throw new Error("Invalid review verdict or empty feedback");
  if (proof.decision === "blocked" || counter.disposition === "blocked") return "blocked";
  if (proof.decision === "revise" || counter.disposition === "revise") return "revise";
  return "accept";
}

/** CSV fields may contain commas, quotes and newlines; repeated bugIds deliberately remain separate rows. */
export function counterexampleCsv(rows: readonly Counterexample[]): string {
  const quote = (value: string | number) => `"${String(value).replaceAll('"', '""')}"`;
  for (const row of rows) {
    if (!row || ![row.bugId, row.file, row.function, row.counterexample].every(
      (value) => typeof value === "string" && value.trim().length > 0,
    ) || !Number.isSafeInteger(row.line) || row.line < 1)
      throw new Error("Counter-example rows need nonblank fields and a positive 1-based line");
  }
  return "bugId,file,function,line number,counter-example of liveness\r\n" + rows.map(
    (row) => [row.bugId, row.file, row.function, row.line, row.counterexample].map(quote).join(",") + "\r\n",
  ).join("");
}

/** Library names come from the proved-library table plus the README's explicit zlib statement example. */
export function readmeLibraries(readme: string): Set<string> {
  const libraries = new Set<string>();
  for (const match of readme.matchAll(/^\| ([\w.-]+) \| \[[^\]]+\]\(proofs\/([^/]+)\/[^/]+\/\)/gm)) {
    if (match[1] !== match[2]) throw new Error("README table library/path mismatch");
    libraries.add(match[1]!);
  }
  for (const match of readme.matchAll(/\]\(projects\/([\w.-]+)\/[^/]+\/Statements\.v\)/g)) libraries.add(match[1]!);
  if (!libraries.size) throw new Error("README contains no library scope");
  return libraries;
}

const verifierIds = Object.entries(document.graph.nodes).filter(
  ([id, node]) => (node.kind === undefined || node.kind === "agent") && !["ProofReviewer", "CounterexampleReviewer"].includes(id),
).map(([id]) => id);

export const Assignments: syntax.DeterministicNode<RoundContext> = ({ context, edges, policy }) => {
  let published = false;
  return {
    state: new graph.nodes.Deterministic<graph.nodes.AgenticInput, AssistantMessage>(async function* (signal) {
      signal.throwIfAborted();
      const text = `Repository: ${context.cwd}\nLinux CTrees model: ${context.linux}\nExtended TICL with CSL: ${context.ticl}\n` +
        `Shared proof stack, checked by this run's preflight: ${context.sharedEvidence} (transcript check.log; Print Assumptions ` +
        "output and hashes of every installed library it resolved in checker/). Compile in opam switch lps-ctree with COQPATH/ROCQPATH " +
        "unset; every framework module, including the shared liveness definitions, comes from that switch. Exported APIs: " +
        "LinuxProcessSemantics.Liveness.AF.{no_reachable_divergence, image_no_reachable_divergence, must_exit_at_af, must_exit_with_af, " +
        "af_done_no_reachable_divergence, must_exit_no_reachable_divergence}, TICL.Logic.Kripke.kripke_step, " +
        "TICL.Logic.Semantics.af_done_accessible, TICL.CTree.Logic.Iter.afr_iterS_done, " +
        "LinuxProcessSemantics.CTreeModel.InfRefine.proc_no_silent_divergence; LinuxProcessSemantics.Liveness.Checks applies them to " +
        "a real LPS image and to a modeled self-jump. State goals with these definitions rather than restating them. Do not rerun " +
        "earlier per-library framework probes/recheck scripts or put a framework _build directory on a load path.\n" +
        `Artifacts: ${context.output}/<your-library>/ (only this library's verifier writes there during verification).\n` +
        "Prove non-spinning for every program and available build in your library using both supplied frameworks. " +
        "Inventory all harnesses in projects/<your-library>/, not only the README baseline. " +
        "No existing agreement proof is a liveness proof. Preserve exact scope, assumptions, provenance and actual checker evidence.\n\n" +
        `Proof/counter-example review feedback to address this round:\n${context.feedback || "Initial round; no earlier review."}`;
      published = true;
      while (true) yield verifierIds.map((id) => graph.Message.create(edges.get(`Assignments~>${id}`)!, { kind: "prompt", text }));
    }, policy),
    is_available: (_view, triggered) => triggered && !published,
  };
};

export const Reports: syntax.DeterministicNode<RoundContext> = ({ policy }) => ({
  state: new graph.nodes.Deterministic<graph.nodes.AgenticInput, AssistantMessage>(async function* () {
    const inputs = yield [];
    const messages = verifierIds.map((id) => {
      const key = graph.EdgeId.create(`${id}->Reports`);
      return { id, message: inputs.values.get(key), text: syntax.finalText(inputs.values.get(key), id) };
    });
    return {
      ...messages[0]!.message!,
      content: [{ type: "text", text: messages.map(({ id, text }) => `## ${id}\n\n${text}`).join("\n\n") }],
    };
  }, policy),
  contract: (id) => ({ expect: `The complete normally completed ${String(id).replace(/->Reports$/, "")} liveness report, including every harness/build, artifacts, checks and counter-example candidates.` }),
});

export const Terminal: syntax.DeterministicNode<RoundContext> = ({ context, policy }) => ({
  state: new graph.nodes.Deterministic<graph.nodes.AgenticInput, AssistantMessage>(async function* () {
    const inputs = yield [];
    const reports = inputs.values.get(graph.EdgeId.create("Reports->Terminal"));
    const proof = inputs.values.get(graph.EdgeId.create("ProofReviewer->Terminal"));
    const counter = inputs.values.get(graph.EdgeId.create("CounterexampleReviewer->Terminal"));
    const text = [
      syntax.finalText(reports, "Reports"),
      "## Proof reviewer/minimizer\n\n" + syntax.finalText(proof, "ProofReviewer"),
      "## Counter-example reviewer\n\n" + syntax.finalText(counter, "CounterexampleReviewer"),
    ].join("\n\n");
    context.decision = reviewDecision(context.verdict, context.counterReview);
    return { ...counter!, content: [{ type: "text", text: `# Liveness review: ${context.decision}\n\n${text}` }] };
  }, policy),
  contract: (id) => ({ expect: `Normally completed, non-empty report on ${id}; preserve all evidence in the terminal output.` }),
});

const textField = { type: "string", minLength: 1, pattern: "\\S" };
const verdictParameters = {
  type: "object", additionalProperties: false,
  properties: { decision: { type: "string", enum: ["accept", "revise", "blocked"] }, feedback: textField },
  required: ["decision", "feedback"],
} as AgentTool["parameters"];
const csvParameters = {
  type: "object", additionalProperties: false,
  properties: {
    disposition: { type: "string", enum: ["complete", "revise", "blocked"] },
    feedback: textField,
    rows: { type: "array", items: {
      type: "object", additionalProperties: false,
      properties: { bugId: textField, file: textField, function: textField, line: { type: "integer", minimum: 1 }, counterexample: textField },
      required: ["bugId", "file", "function", "line", "counterexample"],
    } },
  },
  required: ["disposition", "feedback", "rows"],
} as AgentTool["parameters"];

/** Only the Counter-example reviewer receives this publishing capability. */
export async function publishCounterexamples(context: RoundContext, review: CounterReview, rows: readonly Counterexample[]): Promise<string> {
  if (context.counterReview) throw new Error("Counter-example review already recorded for this round");
  const decision = reviewDecision(context.verdict, review);
  const csv = counterexampleCsv(rows);
  const root = await realpath(context.cwd);
  for (const row of rows) {
    const file = await realpath(resolve(root, row.file));
    const local = relative(root, file);
    if (local === ".." || local.startsWith("../") || isAbsolute(local)) throw new Error(`Source is outside the repository: ${row.file}`);
    const lines = (await readFile(file, "utf8")).split(/\r?\n/);
    if (lines.at(-1) === "") lines.pop();
    if (row.line > lines.length) throw new Error(`Source line is outside ${row.file}: ${row.line}`);
  }
  let status = rows.length ? "Confirmed rows retained for revision; no intermediate CSV published." : "No confirmed liveness counter-examples; no CSV created.";
  if (decision !== "revise" && rows.length) {
    const path = join(context.output, "counterexamples.csv");
    await mkdir(context.output, { recursive: true });
    await writeFile(path, csv, { encoding: "utf8", flag: "wx" });
    context.csv = path;
    status = `${rows.length} source-location rows published to ${path}.`;
  }
  context.counterReview = review;
  return status;
}

export function reviewTools(current: () => RoundContext): Record<string, AgentTool> {
  return {
    proof_review: {
      name: "proof_review", label: "proof_review", description: "Record proof acceptance, actionable verifier corrections, or a missing prerequisite; call exactly once per round.",
      parameters: verdictParameters,
      execute: async (_id, value) => {
        const verdict = value as Verdict;
        const context = current();
        if (context.verdict) throw new Error("Proof review already recorded for this round");
        reviewDecision(verdict, { disposition: "complete", feedback: "Validation only" });
        context.verdict = { decision: verdict.decision, feedback: verdict.feedback };
        return { content: [{ type: "text", text: `Recorded ${verdict.decision}. Return your complete review and verifier feedback.` }], details: undefined };
      },
    },
    counterexample_csv: {
      name: "counterexample_csv", label: "counterexample_csv", description: "Review all candidate witnesses and publish confirmed source-location rows to the five-column CSV on a final round. Repeated bugIds are allowed.",
      parameters: csvParameters,
      execute: async (_id, value) => {
        const { disposition, feedback, rows } = value as CounterReview & { rows: Counterexample[] };
        return {
          content: [{ type: "text", text: await publishCounterexamples(current(), { disposition, feedback }, rows) }], details: undefined,
        };
      },
    },
  };
}

async function requireAbsent(path: string): Promise<void> {
  try { await lstat(path); }
  catch (error) { if ((error as NodeJS.ErrnoException).code === "ENOENT") return; throw error; }
  throw new Error(`Refusing to overwrite existing output: ${path}`);
}

/** Repository, scope and output checks shared by `preflight` and `run`; nothing is created. */
async function prerequisites(cwd: string) {
  const root = await realpath(cwd);
  const output = join(root, "liveness");
  const linux = join(homedir(), "git/rocq-linux-process-semantics");
  const ticl = join(homedir(), "git/ticl");
  for (const path of [linux, ticl]) if (!(await lstat(path)).isDirectory()) throw new Error(`Missing framework directory: ${path}`);
  const scope = readmeLibraries(await readFile(join(root, "README.md"), "utf8"));
  if (verifierIds.length !== scope.size || verifierIds.some((id) => !scope.has(id)))
    throw new Error("README library scope changed; update the explicit YAML verifier nodes before running");
  await requireAbsent(join(output, "counterexamples.csv"));
  await requireAbsent(join(output, "report.md"));
  return { root, output, linux, ticl };
}

/** liveness/check.sh over every verifier library, in its own process group so cancellation reaches the compiler. */
async function check(root: string, checker: string, log: string, signal?: AbortSignal): Promise<number> {
  const out = await open(log, "wx");
  try {
    signal?.throwIfAborted();
    const child = spawn("env", ["-u", "COQPATH", "-u", "ROCQPATH", "opam", "exec", "--switch=lps-ctree", "--",
      "bash", join(root, "liveness/check.sh"), checker, ...verifierIds], { cwd: root, detached: true, stdio: ["ignore", out.fd, out.fd] });
    const exited = Promise.withResolvers<number>();
    child.once("error", exited.reject);
    child.once("close", (code, name) => exited.resolve(code ?? 128 + constants.signals[name!]));
    const stop = () => { try { process.kill(-child.pid!, "SIGTERM"); } catch { /* already exited */ } };
    signal?.addEventListener("abort", stop, { once: true });
    try { return await exited.promise; }
    finally { signal?.removeEventListener("abort", stop); }
  } finally { await out.close(); }
}

/**
 * The shared proof/asset gate, run before any model or agent is acquired. Returns the fresh
 * liveness/preflight-* directory (check.log, exit-status, checker/), kept on success and failure.
 */
export async function preflight(cwd = import.meta.dir, signal?: AbortSignal): Promise<string> {
  signal?.throwIfAborted();
  const { root, output } = await prerequisites(cwd);
  const evidence = await mkdtemp(join(output, "preflight-"));
  try {
    await mkdir(join(evidence, "checker"));
    const status = await check(root, join(evidence, "checker"), join(evidence, "check.log"), signal);
    await writeFile(join(evidence, "exit-status"), `${status}\n`);
    signal?.throwIfAborted();
    if (status !== 0) throw new Error(`env -u COQPATH -u ROCQPATH opam exec --switch=lps-ctree -- bash liveness/check.sh exited with status ${status}`);
    return evidence;
  } catch (error) {
    throw new Error(`Liveness preflight failed; evidence in ${evidence}`, { cause: signal?.aborted ? signal.reason : error });
  }
}

/** Run's acquisitions; liveness.check.ts substitutes them to exercise run without models. */
export const acquire = {
  async models(): Promise<ModelRuntime> {
    const models = await ModelRuntime.create({ allowModelNetwork: true, refreshOnCreate: false });
    const refreshed = await models.refresh({ allowNetwork: true });
    const refreshErrors = Object.fromEntries([...refreshed.errors].map(([provider, error]) => [provider, error.message]));
    // No tracer owns the terminal during prerequisite acquisition.
    console.log("Model refresh:", JSON.stringify({ aborted: refreshed.aborted, errors: refreshErrors }));
    if (refreshed.aborted || refreshed.errors.size) throw new Error("Model catalog refresh failed; see provider errors above");
    const credentials = await models.listCredentials();
    if (!credentials.some(({ providerId }) => providerId === "github-copilot"))
      throw new Error("Saved Pi github-copilot login is required; use pi /login before running");
    const available = await models.getAvailable();
    for (const rung of [verifier, reviewer]) {
      const id = rung.model.slice("github-copilot/".length);
      const model = available.find((candidate) => candidate.provider === "github-copilot" && candidate.id === id);
      if (!model || !getSupportedThinkingLevels(model).includes(rung.thinking)) throw new Error(`Requested model/thinking unavailable: ${rung.model}/${rung.thinking}`);
    }
    return models;
  },
  member: (spec: syntax.AgentSpec, models: ModelRuntime): Promise<agent.JuncoAgent | MockAgent> =>
    syntax.createJuncoAgent(spec, ladder, models),
};

const describe = (error: unknown): string => {
  const parts: string[] = [];
  for (let item = error; item !== undefined; item = item instanceof Error ? item.cause : undefined)
    parts.push(item instanceof Error ? item.message : String(item));
  return parts.join("\n  caused by: ");
};

/** Completed results and unfinished node statuses of one round graph, in node order. */
function roundStatus(round: number, execution: JuncoGraph): string {
  const results = execution.results();
  const nodes = [...execution.observe().nodes.values()].sort((a, b) => String(a.id).localeCompare(String(b.id)));
  return [`## Round ${round} node status`, ...nodes.map(({ id, status }) => {
    const result = results.get(id);
    if (result === undefined) return `### ${id}: ${status}, no result`;
    let text: string;
    try { text = syntax.finalText(result, String(id)); } catch (error) { text = describe(error); }
    return `### ${id}: ${status}\n\n${text}`;
  })].join("\n\n");
}

/** Publish an incomplete report without overwriting, then reject with the primary error first. */
async function fail(path: string, sections: readonly string[], errors: unknown[]): Promise<never> {
  try {
    await mkdir(dirname(path), { recursive: true });
    await writeFile(path, `${sections.join("\n\n")}\n`, { encoding: "utf8", flag: "wx" });
  } catch (error) { errors.push(error); }
  throw errors.length === 1 ? errors[0] : new AggregateError(errors, describe(errors[0]));
}

/** Run feedback rounds over persistent agents; accept or a truthful blocker stops, never an invented round cap. */
export async function run(cwd = import.meta.dir, signal?: AbortSignal): Promise<string> {
  signal?.throwIfAborted();
  const { root, output, linux, ticl } = await prerequisites(cwd);
  const report = join(output, "report.md");
  let sharedEvidence: string;
  try { sharedEvidence = await preflight(root, signal); }
  catch (error) {
    return fail(report, [`# Liveness review: ${signal?.aborted ? "CANCELLED/INCOMPLETE" : "BLOCKED"}`,
      "No verifier ran: the shared proof/asset preflight did not pass. Nothing here is a proof result or a counter-example.",
      describe(error)], [error]);
  }

  let round: RoundContext = { cwd: root, linux, ticl, output, sharedEvidence, feedback: "" };
  const customTools = reviewTools(() => round);
  const members = new Map<string, agent.JuncoAgent | MockAgent>();
  const errors: unknown[] = [];
  let observer: tracer.DataflowTracer | undefined;
  let collection: tools.ToolCollection | undefined;
  let rounds = 0;
  let status = "";
  let terminalText = "";
  try {
    const models = await acquire.models();
    observer = tracer.TuiTracer.shared();
    collection = await tools.ToolCollection.create(root);
    await syntax.resolveAgents(document, { cwd: root, collection, tools: customTools });
    for (;;) {
      rounds++;
      const execution = await JuncoGraph.fromYaml(source, {
        cwd: root, models, ladder, collection, tools: customTools, context: round, signal,
        tracer: observer, code: { Assignments, Reports, Terminal },
        scheduler: () => schedules.strength((_, id) => id === "ProofReviewer" ? "high" : "med", schedules.parallel()),
        // Members persist across rounds; each round's graph only borrows them.
        createAgentOwnership: "caller",
        createAgent: async (spec) => {
          let member = members.get(spec.node);
          if (!member) {
            member = await acquire.member(spec, models);
            members.set(spec.node, member);
          }
          return member;
        },
      });
      try {
        const results = await execution.run({ signal });
        terminalText = syntax.finalText(results.get(graph.NodeId.create("Terminal")), "Terminal");
      } catch (error) { errors.push(error); }
      status = roundStatus(rounds, execution.graph);
      try { await execution.graph.close(); } catch (error) { errors.push(error); }
      if (errors.length || round.decision !== "revise") break;
      round = { cwd: root, linux, ticl, output, sharedEvidence, feedback: `${round.verdict!.feedback}\n\nCounter-example review:\n${round.counterReview!.feedback}` };
    }
  } catch (error) { errors.push(error); }
  for (const member of members.values()) {
    try { await member.return(); } catch (error) { errors.push(error); }
  }
  try { await collection?.close(); } catch (error) { errors.push(error); }
  try { await observer?.flush(); } catch (error) { errors.push(error); }

  if (errors.length) {
    return fail(report, [`# Liveness review: ${signal?.aborted ? "CANCELLED" : "FAILED"}/INCOMPLETE`,
      "The workflow stopped before a final review. Nothing below is a reviewer verdict, a proof result or a counter-example.",
      `Stopped in round ${rounds}: ${errors.map(describe).join("\n\n")}`,
      `Preflight evidence: ${sharedEvidence}\nArtifacts: ${output}/<library>/`,
      status || "No round graph was constructed."], errors);
  }
  await mkdir(output, { recursive: true });
  await writeFile(report, `${terminalText}\n`, { encoding: "utf8", flag: "wx" });
  console.log(terminalText);
  if (round.decision === "blocked") throw new Error(`Liveness verification is BLOCKED; unresolved programs are listed in ${report}`);
  return terminalText;
}

if (import.meta.main) {
  // Graceful cancellation only: SIGKILL or power loss cannot publish an incomplete report.
  const controller = new AbortController();
  const stop = (name: NodeJS.Signals) => controller.abort(new Error(`Liveness workflow interrupted by ${name}`));
  process.on("SIGINT", stop).on("SIGTERM", stop);
  try { await run(import.meta.dir, controller.signal); }
  finally { process.off("SIGINT", stop).off("SIGTERM", stop); }
}
