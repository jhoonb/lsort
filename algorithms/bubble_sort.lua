--
-- bubble_sort(vet) Bubble Sort
-- https://pt.wikipedia.org/wiki/Bubble_sort
-- pior caso O(n^2) -- estável -- in-place
---------------------------------------------------------------------
-- param vet: table, array a ser ordenado
-- return
---------------------------------------------------------------------
local function bubble_sort(vet)
  repeat
    local swapped = false
    for i = 1, #vet - 1 do
      -- verificar se os elementos estão na ordem certa
      if vet[i] > vet[i+1] then
        -- se true: trocar elementos de lugar
        vet[i], vet[i+1] = vet[i+1], vet[i]
        swapped = true
      end
    end
  -- enquanto houver elementos sendo reordenados.
  until not swapped
end

-- return module
return bubble_sort