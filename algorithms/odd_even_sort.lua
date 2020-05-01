  --
  -- odd_even_sort(vet) Odd–even Sort
  -- https://en.wikipedia.org/wiki/Odd%E2%80%93even_sort
  -- pior caso O(n^2) -- estável -- in-place
  ---------------------------------------------------------------------
  -- param vet: table, array a ser ordenado
  -- return
  ---------------------------------------------------------------------
local function odd_even_sort(vet)
  local sorted = false
  while not sorted do
    sorted = true
    for i = 2, #vet-1, 2 do
      if vet[i] > vet[i+1] then
        vet[i], vet[i+1] = vet[i+1], vet[i] -- swap
        sorted = false
      end
    end

    for i = 1, #vet-1, 2 do
      if vet[i] > vet[i+1] then
        vet[i], vet[i+1] = vet[i+1], vet[i] -- swap
        sorted = false
      end
    end
  end -- loop 1x
end

-- return module
return odd_even_sort