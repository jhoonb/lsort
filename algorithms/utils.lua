--
-- Jhonathan Paulo Banczek. 2020 - jpbanczek@gmail.com - github.com/jhoonb
--

--[[
    functions:

    utils.jointables(t[, ...])                      --> table
    utils.slicetable(t[, ibegin[, iend[, step] ] ]) --> table
    utils.minmax(vet)                               --> number, number
    utils.newarray(size[, value])                   --> table
    utils.newarrayrandom(size[, m[, n] ])           --> table
    utils.cmp(veti, vetj)                           --> boolean

--]]


local utils = {}

local _ipairs = ipairs
local _random = math.random
local _randomseed = math.randomseed
local _time = os.time

--
-- jointables(t[, ...]) concate várias tabelas ao final de t
-- Ex.:
-- t = {1, 2}
-- jointables(t) --> {1, 2}
-- jointables(t, {3, 4}) --> {1, 2, 3, 4}
-- jointables(t, {3, 4}, {5}) --> {1, 2, 3, 4, 5}
-- jointables(t, {3, 4}, {5}, {6, 7}) --> {1, 2, 3, 4, 5, 6, 7}
---------------------------------------------------------------------
-- param t: table
-- param ...: tables
-- return: table
---------------------------------------------------------------------
utils.jointables = function(t, ...)
    for _, v in _ipairs({...}) do
      for j = 1, #v do
        t[#t+1] = v[j]
      end
    end
    return t
  end


  --
  -- slicetable(t[, ibegin[, iend[, step]]]) retorna uma fatia
  -- (slice) do array t.
  -- Ex.:
  -- slicetable({1, 2, 3, 4, 5}, 2, 4) --> {2, 3, 4}
  -- slicetable({1, 2, 3, 4, 5}, 2, 4, 2) --> {2, 4}
  -- slicetable({1, 2, 3, 4, 5}, 2, 4, 3) --> {2}
  -- slicetable({1, 2, 3, 4, 5}) --> {1, 2, 3, 4, 5}
  ---------------------------------------------------------------------
  -- param t: table
  -- param ibegin: number
  -- param iend: number
  -- param step: number
  -- return: table, novo array ordenado
  ---------------------------------------------------------------------
utils.slicetable = function(t, ibegin, iend, step)
    local ibegin = ibegin or 1
    local iend = iend or #t
    local step = step or 1
    local nt = {}

    for i = ibegin, iend, step do nt[#nt+1] = t[i] end

    return nt
  end


  --
  -- minmax(vet) encontra o menor e o maior valor em vet
  -- Ex.:
  -- minmax({1,2,3,4,5}) --> 1, 5
  -- minmax({10,2,2,4,5}) --> 2, 10
  ---------------------------------------------------------------------
  -- param vet: table
  -- return: number, number
  ---------------------------------------------------------------------
 utils.minmax = function(vet)
    local minvalue, maxvalue = vet[1], vet[1]

    for i = 2, #vet do
      if maxvalue <= vet[i] then maxvalue = vet[i] end
      if minvalue >= vet[i] then minvalue = vet[i] end
    end
    return minvalue, maxvalue
  end


  --
  -- newarray(size[, value]) retorna um novo array de tamanho size
  -- com value de valor padrão
  -- Ex.:
  -- newarray(5, 0) --> {0, 0, 0, 0, 0}
  -- newarray(4, "Lua") --> {"Lua", "Lua", "Lua", "Lua"}
  ---------------------------------------------------------------------
  -- param size: number, tamanho do novo array
  -- param value: valor padrão dos elementos de array
  -- return arr: table
  ---------------------------------------------------------------------
utils.newarray = function(size, value)
    local value = value or 0
    local arr = {}
    for i = 1, size do arr[i] = value end
    return arr
end


--
-- newarrayrandom(size[, m[, n]]) retorna um novo array de tamanho size
-- com valores aleatorios entre m e n
-- Ex.:
-- newarrayrandom(5) == newarrayrandom(5, 1, 1000)
-- newarrayrandom(5, 1) == newarrayrandom(5, 1, 1000)
-- newarrayrandom(5, 1, 10) --> {10, 5, 6, 3, 5}
---------------------------------------------------------------------
-- param size: number, tamanho do novo array
-- param m: number
-- param n: number
-- return arr: table
---------------------------------------------------------------------
utils.newarrayrandom = function(size, m, n)
    _randomseed(_time())

    local m = m or 1
    local n = n or 1000
    local arr = {}
    for i = 1, size do arr[i] = _random(m, n) end
    return arr
  end


--
-- cmp(veti, vetj) compara dois vetores e retorna true
-- se todos os elementos forem iguais, do contrário retorna false
-- Ex.:
-- cmp({10, 20, 30}, {10, 20, 30}) --> true
-- cmp({1}, {1}) --> true
---------------------------------------------------------------------
-- param veti: table
-- param verj: table
-- return boolean
---------------------------------------------------------------------
utils.cmp = function(veti, vetj)
    if #veti ~= #vetj then return false end
    for i=1, #veti do
       if veti[i] ~= vetj[i] then return false end
    end
    return true
 end


-- return module
return utils