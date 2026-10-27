import assert from "node:assert/strict";
import { spawnSync } from "node:child_process";
import { cp, mkdir, mkdtemp, readdir, readFile, rm, symlink, writeFile } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join } from "node:path";
import type { AgentTool } from "@earendil-works/pi-agent-core";
import type { AssistantMessage } from "@earendil-works/pi-ai";
import type { ModelRuntime } from "@earendil-works/pi-coding-agent";
import { MockAgent, type syntax } from "junco-agency";
import { acquire, counterexampleCsv, document, publishCounterexamples, reviewDecision, run, type RoundContext } from "./liveness.ts";

async function check() {
  const proof = { decision: "accept", feedback: "All proof obligations checked" } as const;
  const complete = { disposition: "complete", feedback: "Every candidate independently checked" } as const;
  assert.equal(reviewDecision(proof, complete), "accept");
  assert.equal(reviewDecision(proof, { ...complete, disposition: "revise" }), "revise");
  assert.equal(reviewDecision({ ...proof, decision: "revise" }, { ...complete, disposition: "blocked" }), "blocked");
  assert.throws(() => reviewDecision(proof), /Both reviewers/);
  const root = await mkdtemp(join(tmpdir(), "liveness-check-"));
  const outside = await mkdtemp(join(tmpdir(), "liveness-outside-"));
  try {
    await writeFile(join(root, "loop.c"), "void loop(void) {\n  for (;;) {}\n}\n");
    await writeFile(join(outside, "outside.c"), "void outside(void);\n");
    await symlink(join(outside, "outside.c"), join(root, "outside.c"));
    const row = { bugId: "spin-1", file: "loop.c", function: "loop", line: 2, counterexample: 'input=0, witness="cycle"\nchecked: Witness.v' };
    const rows = [row, { ...row, line: 1 }];
    const fresh = (): RoundContext => ({ cwd: root, linux: root, ticl: root, output: join(root, "liveness"), sharedEvidence: root, feedback: "", verdict: proof });
    assert.throws(() => counterexampleCsv([{ ...row, line: 0 }]), /1-based/);
    assert.throws(() => counterexampleCsv([{ ...row, counterexample: " " }]), /nonblank/);
    await assert.rejects(publishCounterexamples(fresh(), complete, [{ ...row, line: 4 }]), /Source line/);
    await assert.rejects(publishCounterexamples(fresh(), complete, [{ ...row, file: "outside.c" }]), /outside the repository/);
    const revision = { ...fresh(), verdict: { ...proof, decision: "revise" as const } };
    await publishCounterexamples(revision, complete, rows);
    assert.equal(await Bun.file(join(root, "liveness/counterexamples.csv")).exists(), false);
    await publishCounterexamples(fresh(), complete, []);
    assert.equal(await Bun.file(join(root, "liveness/counterexamples.csv")).exists(), false);
    const accepted = fresh();
    await publishCounterexamples(accepted, complete, rows);
    const csv = await readFile(join(root, "liveness/counterexamples.csv"), "utf8");
    assert.equal(csv, 'bugId,file,function,line number,counter-example of liveness\r\n' +
      '"spin-1","loop.c","loop","2","input=0, witness=""cycle""\nchecked: Witness.v"\r\n' +
      '"spin-1","loop.c","loop","1","input=0, witness=""cycle""\nchecked: Witness.v"\r\n');
    await assert.rejects(publishCounterexamples(accepted, complete, rows), /already recorded/);
    await assert.rejects(publishCounterexamples(fresh(), complete, [row]), { code: "EEXIST" });
    assert.equal(await readFile(join(root, "liveness/counterexamples.csv"), "utf8"), csv);
  } finally { await Promise.all([rm(root, { recursive: true, force: true }), rm(outside, { recursive: true, force: true })]); }
}

// ---------------------------------------------------------------------------------------------
// run() boundaries, in an isolated repository with the real README scope and a stand-in checker.

const message = (text: string): AssistantMessage => ({
  role: "assistant", content: [{ type: "text", text }], api: "mock", provider: "mock", model: "mock",
  usage: { input: 0, output: 0, cacheRead: 0, cacheWrite: 0, totalTokens: 0, cost: { input: 0, output: 0, cacheRead: 0, cacheWrite: 0, total: 0 } },
  stopReason: "stop", timestamp: 0,
});
const interrupted = { step: { kind: "settled", message: { ...message("aborted"), stopReason: "aborted" } } } as const;
const settles = (...texts: string[]) => new MockAgent({
  runs: texts.map((text) => ({ frames: [{ step: { kind: "settled", message: message(text) } }], interrupted })),
});
const agentIds = Object.entries(document.graph.nodes).filter(([, node]) => node.kind === undefined || node.kind === "agent").map(([id]) => id);

/** A repository with the real README scope whose liveness/check.sh is `checker`. */
async function repository(checker: string): Promise<string> {
  // Under _build: ToolCollection keeps its state beside the repository.
  await mkdir(join(import.meta.dir, "_build"), { recursive: true });
  const root = await mkdtemp(join(import.meta.dir, "_build", "liveness-run-"));
  await mkdir(join(root, "liveness"));
  await cp(join(import.meta.dir, "README.md"), join(root, "README.md"));
  await writeFile(join(root, "liveness/check.sh"), checker);
  return root;
}

/** Substitute run's acquisitions; `member` returns the scripted agent of a node. */
async function withAcquire<T>(member: (spec: syntax.AgentSpec) => MockAgent, body: (calls: { models: number }) => Promise<T>): Promise<T> {
  const saved = { ...acquire };
  const calls = { models: 0 };
  acquire.models = async () => { calls.models++; return {} as ModelRuntime; };
  acquire.member = async (spec) => member(spec);
  try { return await body(calls); } finally { Object.assign(acquire, saved); }
}

/** Before each run, a reviewer records `values[n]` through its real review tool, as a model would. */
function reviewer(spec: syntax.AgentSpec, tool: string, values: readonly object[]): MockAgent {
  const instance = settles(...values.map((_, index) => `${spec.node} review ${index + 1}`));
  const { execute } = spec.tools.find((item) => (item as AgentTool).name === tool) as AgentTool;
  const next = instance.next.bind(instance);
  let calls = 0;
  instance.next = async (...args) => {
    await execute(`${tool}-${calls}`, values[calls++] as never);
    return next(...args);
  };
  return instance;
}

async function blockedPreflight() {
  const root = await repository("echo 'stand-in checker: prerequisite missing' >&2; exit 3\n");
  try {
    await withAcquire(() => assert.fail("no agent may be created"), async (calls) => {
      await assert.rejects(run(root), (error: Error) =>
        /^Liveness preflight failed; evidence in \S+preflight-\S+$/.test(error.message) &&
        /exited with status 3/.test((error.cause as Error).message));
      assert.equal(calls.models, 0);
    });
    const report = await readFile(join(root, "liveness/report.md"), "utf8");
    assert.match(report, /^# Liveness review: BLOCKED\n\nNo verifier ran/);
    const evidence = /evidence in (\S+)/.exec(report)![1]!;
    assert.match(report, /exited with status 3/);
    assert.match(await readFile(join(evidence, "check.log"), "utf8"), /stand-in checker: prerequisite missing/);
    assert.equal(await readFile(join(evidence, "exit-status"), "utf8"), "3\n");
    assert.deepEqual(await readdir(join(evidence, "checker")), []);

    // An existing output is never overwritten, and nothing runs.
    for (const name of ["report.md", "counterexamples.csv"]) {
      await rm(join(root, "liveness"), { recursive: true });
      await mkdir(join(root, "liveness"));
      await writeFile(join(root, "liveness/check.sh"), "exit 0\n");
      await writeFile(join(root, "liveness", name), "earlier bytes\n");
      await withAcquire(() => assert.fail("no agent may be created"), async (calls) => {
        await assert.rejects(run(root), /Refusing to overwrite existing output/);
        assert.equal(calls.models, 0);
      });
      assert.equal(await readFile(join(root, "liveness", name), "utf8"), "earlier bytes\n");
      assert.deepEqual((await readdir(join(root, "liveness"))).sort(), ["check.sh", name]);
    }
  } finally { await rm(root, { recursive: true, force: true }); }
}

async function cancelledRound() {
  const root = await repository("exit 0\n");
  const controller = new AbortController();
  const reason = new Error("operator interrupt");
  const members: MockAgent[] = [];
  const beastSettled = Promise.withResolvers<void>();
  try {
    await withAcquire((spec) => {
      const instance = settles(`${spec.node} completed report`);
      const next = instance.next.bind(instance);
      if (spec.node === "boost-beast")
        instance.next = async (...args) => {
          try { return await next(...args); } finally { beastSettled.resolve(); }
        };
      // Still working when the run is cancelled, once boost-beast's report is in.
      if (spec.node === "boost-json")
        instance.next = async () => {
          await beastSettled.promise;
          await new Promise((resolve) => setTimeout(resolve, 0));
          controller.abort(reason);
          throw reason;
        };
      members.push(instance);
      return instance;
    }, async () => {
      await assert.rejects(run(root, controller.signal), (error) => error === reason);
    });
    const report = await readFile(join(root, "liveness/report.md"), "utf8");
    assert.match(report, /^# Liveness review: CANCELLED\/INCOMPLETE\n/);
    assert.match(report, /Nothing below is a reviewer verdict/);
    assert.match(report, /Stopped in round 1: operator interrupt/);
    assert.match(report, /### boost-beast: done\n\nboost-beast completed report/);
    assert.match(report, /### boost-json: \w+, no result/);
    assert.match(report, /### Terminal: \w+, no result/);
    assert.equal(await Bun.file(join(root, "liveness/counterexamples.csv")).exists(), false);
    assert.equal(members.length, agentIds.length);
    for (const member of members) assert.equal(member.status, "closed");
  } finally { await rm(root, { recursive: true, force: true }); }
}

async function reviseThenAccept() {
  const root = await repository("exit 0\n");
  const created: string[] = [];
  const members: MockAgent[] = [];
  try {
    const text = await withAcquire((spec) => {
      created.push(spec.node);
      const instance = spec.node === "ProofReviewer"
        ? reviewer(spec, "proof_review", [
          { decision: "revise", feedback: "zlib: rerun the image proof" },
          { decision: "accept", feedback: "All obligations checked" }])
        : spec.node === "CounterexampleReviewer"
          ? reviewer(spec, "counterexample_csv", [
            { disposition: "complete", feedback: "No candidates", rows: [] },
            { disposition: "complete", feedback: "No candidates", rows: [] }])
          : settles(`${spec.node} report 1`, `${spec.node} report 2`);
      members.push(instance);
      return instance;
    }, () => run(root));
    assert.deepEqual(created.sort(), [...agentIds].sort(), "each member is created once and reused");
    assert.match(text, /^# Liveness review: accept\n/);
    assert.match(text, /zlib report 2/);
    assert.doesNotMatch(text, /report 1/);
    assert.equal(await readFile(join(root, "liveness/report.md"), "utf8"), `${text}\n`);
    assert.equal(await Bun.file(join(root, "liveness/counterexamples.csv")).exists(), false);
    for (const member of members) {
      // Each round's graph close aborts its borrowed members; only run returns them, once.
      assert.equal(member.calls.filter(({ method }) => method === "abort").length, 2);
      assert.equal(member.status, "closed");
    }
  } finally { await rm(root, { recursive: true, force: true }); }
}

/** The asset gate on the oft fixture: missing or altered published bytes fail and are never replaced. */
function assetGate() {
  const script = String.raw`
import json, os, shutil, subprocess, sys, tempfile
repo = sys.argv[1]
sys.path.insert(0, os.path.join(repo, "tools"))
from oft import fetch
from oft.tests.helpers import tree
from oft.tests.test_fetch_check import make_release, run
elf = "projects/zlib/bin/checksum_fuzzer/checksum_fuzzer.plain"
out = {}
for case in ("missing", "modified"):
    with tree() as t, tempfile.TemporaryDirectory() as assets, tempfile.TemporaryDirectory() as evidence:
        make_release(t, assets)
        assert run(fetch.fetch, t.root, ["zlib"], source=assets)[0] == 0
        os.makedirs(t.path("liveness"))
        shutil.copy(os.path.join(repo, "liveness", "check.sh"), t.path("liveness", "check.sh"))
        shutil.copy(os.path.join(repo, "oft"), t.path("oft"))
        os.symlink(os.path.join(repo, "tools"), t.path("tools"))
        if case == "missing":
            os.unlink(t.path(elf))
        else:
            with open(t.path(elf), "ab") as f:
                f.write(b"!")
        before = open(t.path(elf), "rb").read() if os.path.exists(t.path(elf)) else None
        p = subprocess.run(["bash", t.path("liveness/check.sh"), evidence, "zlib"], capture_output=True, text=True)
        after = open(t.path(elf), "rb").read() if os.path.exists(t.path(elf)) else None
        out[case] = {"status": p.returncode, "output": p.stdout + p.stderr, "unchanged": before == after,
                     "compiled": os.path.exists(os.path.join(evidence, "Preflight.v"))}
print(json.dumps(out))
`;
  const result = spawnSync("env", ["-u", "COQPATH", "-u", "ROCQPATH", "opam", "exec", "--switch=lps-ctree", "--",
    "python3", "-c", script, import.meta.dir], { encoding: "utf8", env: { ...process.env, PYTHONDONTWRITEBYTECODE: "1" } });
  assert.equal(result.status, 0, result.stderr);
  const cases = JSON.parse(result.stdout) as Record<string, { status: number; output: string; unchanged: boolean; compiled: boolean }>;
  const elf = "projects/zlib/bin/checksum_fuzzer/checksum_fuzzer.plain";
  assert.match(cases.missing!.output, new RegExp(`${elf}: missing \\(run ./oft fetch zlib\\)`));
  assert.match(cases.modified!.output, new RegExp(`${elf}: does not match its SHA-256`));
  for (const item of Object.values(cases)) {
    assert.notEqual(item.status, 0);
    assert.match(item.output, /verify-sha failed/);
    assert.equal(item.unchanged, true, "no download or substitute bytes");
    assert.equal(item.compiled, false, "the gate fails before any compile");
  }
}

await check();
console.log("Liveness review/CSV boundary check passed.");
assetGate();
console.log("Liveness asset gate check passed.");
await blockedPreflight();
console.log("Liveness blocked-preflight check passed.");
await cancelledRound();
console.log("Liveness cancellation check passed.");
await reviseThenAccept();
console.log("Liveness revise/accept round check passed.");
