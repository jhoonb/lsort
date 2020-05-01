--
-- insertion_sort(vet) Insertion Sort
-- https://pt.wikipedia.org/wiki/Insertion_sort
-- pior caso O(n^2) -- estável -- in-place
---------------------------------------------------------------------
-- param vet: table, array a ser ordenado
-- return
---------------------------------------------------------------------
local function insertion_sort(vet)
  for i = 2, #vet do
    local aux, j = vet[i], i - 1
    while j >= 1 and vet[j] > aux do
      vet[j+1] = vet[j]
      j = j - 1
    end
    vet[j+1] = aux
  end
end

-- return module
return insertion_sort