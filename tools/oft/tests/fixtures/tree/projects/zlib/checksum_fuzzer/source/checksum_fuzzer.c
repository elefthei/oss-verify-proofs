/* Test fixture: a stand-in for a harness source, shaped like the real one
   so that the line ranges in harness.yaml point at the checks. */
#include <assert.h>
#include <stddef.h>
#include <stdint.h>

unsigned long crc_chunks(const uint8_t *d, size_t n, size_t k);
unsigned long crc_once(const uint8_t *d, size_t n);
unsigned long adler_chunks(const uint8_t *d, size_t n, size_t k);
unsigned long adler_once(const uint8_t *d, size_t n);
int combine_law_holds(const uint8_t *d, size_t n, size_t k);

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
  if (size < 1 || size > 1024 * 1024)
    return 0;
  size_t k = data[0] ? data[0] : 1;
  assert(combine_law_holds(data, size, k));
  assert(crc_chunks(data, size, k) == crc_once(data, size));
  assert(adler_chunks(data, size, k) == adler_once(data, size));
  return 0;
}
