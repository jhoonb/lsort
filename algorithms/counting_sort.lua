local utils = require("algorithms.utils")
local minmax = utils.minmax
local newarray = utils.newarray

--
-- counting_sort(vet) Counting Sort
-- https://pt.wikipedia.org/wiki/Counting_sort
-- Worst-case O(n+k) -- Stable -- not-in-place
---------------------------------------------------------------------
-- param vet: table, array
-- return: table, new array
---------------------------------------------------------------------
local function counting_sort(vet)
  -- encontra o maior valor em vet
  local _, max = minmax(vet)

  -- cria array auxiliar tamanho max e elemento valor 0
  local aux = newarray(max, 0)
  -- conta quantas vezes cada valor em vet aparece
  for i = 1, #vet do aux[vet[i]] = aux[vet[i]] + 1 end
  -- acumula as vezes de cada elemento de vet com os elementos
  -- anteriores a este
  for i = 2, #aux do aux[i] = aux[i] + aux[i-1] end
  -- cria array de saída (o array ordenado)
  nvet = newarray(#vet, 0)
  -- adiciona os elementos em suas posições conforme o acumulo
  --  de suas frequencias
  for i = #nvet, 1, -1 do
    nvet[aux[vet[i]]] = vet[i]
    aux[vet[i]] = aux[vet[i]] - 1
  end

  return nvet
end

-- return module
return counting_sort