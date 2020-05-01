--
-- quick_sort(vet[, ibegin[, iend] ]) Quick Sort
-- https://pt.wikipedia.org/wiki/Quicksort
-- pior caso O(n^2) -- não-estável
---------------------------------------------------------------------
-- param vet: table, array a ser ordenado
-- param ibegin: number, opcional
-- param iend: number, opcional
-- return: table, novo array ordenado
---------------------------------------------------------------------
local function quick_sort(vet, ibegin, iend)
  local ibegin = ibegin or 1
  local iend = iend or #vet

  local aux
  local i = ibegin
  local j = iend - 1
  local pivot = vet[(ibegin + iend) // 2]

  while i <= j do
    while vet[i] < pivot and i < iend do i = i + 1 end
    while vet[j] > pivot and j > ibegin do j = j - 1 end

    if i <= j then
      aux = vet[i]
      vet[i] = vet[j]
      vet[j] = aux
      i = i + 1
      j = j - 1
    end
  end -- end loop 1x

  if j > ibegin then quick_sort(vet, ibegin, j+1) end
  if i < iend then quick_sort(vet, i, iend) end

  return vet
end

-- return module
return quick_sort