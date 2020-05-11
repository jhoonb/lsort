--
-- gnome_sort(vet) Gnome Sort
-- https://en.wikipedia.org/wiki/Gnome_sort
-- Worst-case O(n^2) -- Stable -- in-place
---------------------------------------------------------------------
-- param vet: table, array
-- return
---------------------------------------------------------------------
local function gnome_sort(vet)
  local pos = 1
  while pos <= #vet do
    if pos == 1 or vet[pos] >= vet[pos-1] then 
      pos = pos + 1
    else
      vet[pos], vet[pos-1] = vet[pos-1], vet[pos]
      pos = pos - 1
    end
  end -- loop 1x
end

-- return module
return gnome_sort