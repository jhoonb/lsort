  --
  -- cocktail_sort(vet) Cocktail Sort
  -- https://en.wikipedia.org/wiki/Cocktail_shaker_sort
  -- Worst-case O(n^2) -- Stable -- in-place
  ---------------------------------------------------------------------
  -- param vet: table, array
  -- return
  ---------------------------------------------------------------------
local function cocktail_sort(vet)
  repeat
    local swapped = false
    for i=1, #vet-1 do
      if vet[i] > vet[i+1] then
        vet[i], vet[i+1] =  vet[i+1], vet[i]
        swapped = true
      end
    end
    if not swapped then break end
    swapped = false
    for i = #vet-1, 1, -1 do
      if vet[i] > vet[i + 1] then
        vet[i], vet[i+1] =  vet[i+1], vet[i]
        swapped = true
      end
    end
  until not swapped
end

-- return module
return cocktail_sort