// SPDX-License-Identifier: Apache-2.0
// SPDX-FileCopyrightText: Copyright The WasmEdge Authors

                                                                            
                                                                                 
                                                                    
                                                                   
                                                                              
                                                                              
                                                                       
                                                                         
          
#include "driver/fuzzPO.h"

#include <cstddef>
#include <cstdint>

extern "C" [[gnu::visibility("default")]] int
LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
  return WasmEdge::Driver::FuzzPO(Data, Size);
}
