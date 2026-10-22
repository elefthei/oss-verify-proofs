// Test fixture: a stand-in for a harness source.
#include <cassert>
#include <cstddef>
#include <cstdint>
#include <vector>

bool round_trip_equal(const std::vector<std::uint8_t>& v);

extern "C" int LLVMFuzzerTestOneInput(const std::uint8_t* data, std::size_t size) {
  std::vector<std::uint8_t> v(data, data + size);
  assert(round_trip_equal(v));
  return 0;
}
