--
-- Jhonathan Paulo Banczek. 2020 - jpbanczek@gmail.com - github.com/jhoonb
--

local lsort = require('lsort')
local utils = require('algorithms.utils')
local clock = os.clock

-- 30 mil
local vet = utils.newarrayrandom(30000)
-- copy
local vetok = {}; for i=1, #vet do vetok[#vetok+1] = vet[i] end
-- sorted in-place
table.sort(vetok)


--  run_test running test
local function run_test(f, name_f)
  print("testing function: " .. name_f)
        
  local starttime = clock()
  local resp = f(vet)
  local endtime = clock()
  --print(table.unpack(resp))
  assert(utils.cmp(resp, vetok), 'algorithm ' .. name_f)
  local finaltime = string.format("Time: %gs\n", endtime-starttime)
  print("Tested with success! " .. finaltime .. "\n")
end

-- test
run_test(lsort.counting_sort, 'counting_sort')
run_test(lsort.insertion_sort, 'insertion_sort')
--run_test(lsort.bubble_sort, 'bubble_sort')
--run_test(lsort.selection_sort, 'selection_sort')
--run_test(lsort.merge_sort, 'merge_sort')
--run_test(lsort.quick_sort, 'quick_sort')
