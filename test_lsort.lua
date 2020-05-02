--
-- Jhonathan Paulo Banczek. 2020 - jpbanczek@gmail.com - github.com/jhoonb
--

local lsort = require('lsort')
local utils = require('algorithms.utils')
local clock = os.clock
local sort = table.sort


--  run_test running test
local function run_test(f, name_f, algorithm_type)
  local algorithm_type  = algorithm_type  or 'new table'
  -- 10 mil
  local vet = utils.newarrayrandom(10000)
  -- copy
  local vetok = utils.copy(vet)
  -- sorted in-place
  sort(vetok)

  print("testing function: " .. name_f .. " | algorithm_type: " .. algorithm_type)

  local starttime = clock()

  if algorithm_type == 'in-place' then f(vet)
  else vet = f(vet) end

  local endtime = clock()
  --print(table.unpack(resp))
  assert(utils.cmp(vet, vetok), 'algorithm ' .. name_f)
  local finaltime = string.format("Time: %gs\n", endtime-starttime)
  print("Tested with success! " .. finaltime .. "\n")
end

-- test 10x
for i=1, 10 do
  run_test(lsort.counting_sort, 'counting_sort')
  run_test(lsort.insertion_sort, 'insertion_sort', 'in-place')
  run_test(lsort.bubble_sort, 'bubble_sort', 'in-place')
  run_test(lsort.selection_sort, 'selection_sort', 'in-place')
  run_test(lsort.merge_sort, 'merge_sort', 'in-place')
  run_test(lsort.quick_sort, 'quick_sort', 'in-place')
  run_test(lsort.gnome_sort, 'gnome_sort', 'in-place')
  run_test(lsort.cocktail_sort, 'cocktail_sort', 'in-place')
  run_test(lsort.odd_even_sort, 'odd_even_sort', 'in-place')
  run_test(lsort.pigeonhole_sort, 'pigeonhole_sort', 'in-place')
  run_test(lsort.radix_sort, 'radix_sort', 'in-place')
end