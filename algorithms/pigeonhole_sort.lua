local utils = require('algorithms.utils')

--
-- pigeonhole_sort(vet) Pigeonhole Sort
-- https://en.wikipedia.org/wiki/Pigeonhole_sort
-- Worst-case O(N + n)  where N is the range of key values and n 
-- is the input size -- Stable -- in-place
---------------------------------------------------------------------
-- param vet: table, array
-- return
---------------------------------------------------------------------
local function pigeonhole_sort (vet)
  local nvet = utils.newarray(#vet)
  for i = 1, #vet do nvet[vet[i]] = nvet[vet[i]] + 1 end

  local j = 1
  for i = 1, #nvet do
    for v = 1, nvet[i] do
      vet[j] = i
      j = j + 1
    end
  end
end

-- return module
return pigeonhole_sort