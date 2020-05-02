--
-- quick_sort(vet[, ibegin[, iend] ]) Quick Sort
-- https://pt.wikipedia.org/wiki/Quicksort
-- Worst-case O(n^2) -- Not Stable -- in-place
---------------------------------------------------------------------
-- param vet: table, array
-- param ibegin: number, optional
-- param iend: number, optional
-- return
---------------------------------------------------------------------
local function quick_sort(vet, ibegin, iend)
  local ibegin = ibegin or 1
  local iend = iend or #vet
  
  local i, j = ibegin, iend

  local pivot = vet[(ibegin + iend) // 2]
  local aux
  while i <= j do
    while vet[i] < pivot do i = i + 1 end
    while vet[j] > pivot do j = j - 1 end
    if i <= j then 
      aux = vet[i]
      vet[i], vet[j] = vet[j], vet[i]
      i = i + 1
      j = j - 1
    end
  end -- loop 1x
  if ibegin < j then quick_sort(vet, ibegin, j) end
  if i < iend then quick_sort(vet, i, iend) end 

end

-- return module
return quick_sort