--
-- selection_sort(vet) Selection Sort
-- https://pt.wikipedia.org/wiki/Selection_sort
-- Worst-case O(n^2) -- Not Stable -- in-place
---------------------------------------------------------------------
-- param vet: table, array
-- return
---------------------------------------------------------------------
local selection_sort = function(vet)
  for i = 1, #vet do
    local min = i
    for j = i+1, #vet do
      if vet[j] < vet[min] then min = j end
    end
    if vet[i] ~= vet[min] then
      vet[i], vet[min] = vet[min], vet[i]
    end
  end
end

-- return module
return selection_sort