local slicetable = require("algorithms.utils").slicetable

--
-- merge_sort(vet) Merge Sort
-- https://pt.wikipedia.org/wiki/Merge_sort
-- pior caso O(n log n) -- estável
---------------------------------------------------------------------
-- param vet: table, array a ser ordenado
-- return: table, novo array ordenado
---------------------------------------------------------------------
local function merge_sort(vet)
  if #vet > 1 then
    local middle = #vet // 2 
    local left_vet = slicetable(vet, 1, middle)
    local right_vet = slicetable(vet, middle+1, #vet)

    merge_sort(left_vet)
    merge_sort(right_vet)

    local i, j, k = 1, 1, 1

    while i < #left_vet and j < #right_vet do 
      if left_vet[i] < right_vet[j] then
        vet[k] = left_vet[i]
        i = i + 1
      else
        vet[k] = right_vet[j]
        j = j + 1
      end
      k = k + 1
    end

    while i <= #left_vet do 
      vet[k] = left_vet[i]
      i = i + 1
      k = k + 1
    end

    while j <= #right_vet do 
      vet[k] = right_vet[j]
      j = j + 1
      k = k + 1
    end
  end

  return vet
end

-- return module
return merge_sort