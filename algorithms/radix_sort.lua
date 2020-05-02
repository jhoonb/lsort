local utils = require('algorithms.utils')
local floor = math.floor

--
-- radix_sort(vet) Radix Sort
-- https://pt.wikipedia.org/wiki/Radix_sort
-- Worst-case O(w . n) -- Stable -- in-place
-- where w is the number of bits required to store each key
-- based: https://zh.wikipedia.org/wiki/%E5%9F%BA%E6%95%B0%E6%8E%92%E5%BA%8F
---------------------------------------------------------------------
-- param vet: table, array
-- return
---------------------------------------------------------------------
local function radix_sort(vet)

  function _max_bit(vet)
    local bit, weight = 1, 10
    for i = 1, #vet do
      while vet[i] >= weight do
        weight = weight * 10
        bit = bit + 1
      end
    end
    return bit
  end

  local maxbit = _max_bit(vet)
  local temp, radix = {}, 1

  for i = 1, maxbit do

    local bucket = utils.newarray(10)

    for v = 1, #vet do
      local remainder = floor((vet[v] / radix)) % 10 + 1
      bucket[remainder] = bucket[remainder] + 1
    end

    for j = 2, 10 do
      bucket[j] = bucket[j-1] + bucket[j]
    end

    for k = #vet, 1, -1 do
      local remainder = floor((vet[k] / radix)) % 10 + 1
      temp[bucket[remainder]] = vet[k]
      bucket[remainder] = bucket[remainder] - 1
    end

    for v = 1, #temp do vet[v] = temp[v] end

    radix = radix * 10
  end -- loop 1
end

-- return module
return radix_sort