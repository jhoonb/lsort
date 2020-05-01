--
-- Jhonathan Paulo Banczek. 2020 - jpbanczek@gmail.com - github.com/jhoonb
--


local lsort = {}

---------------------------------------------------------------------
--                       Sorting Algorithm
---------------------------------------------------------------------
lsort.bubble_sort = require("algorithms.bubble_sort")
lsort.insertion_sort = require("algorithms.insertion_sort")
lsort.selection_sort = require("algorithms.selection_sort")
lsort.merge_sort = require("algorithms.merge_sort")
lsort.quick_sort = require("algorithms.quick_sort")
lsort.counting_sort = require("algorithms.counting_sort")

-- return module
return lsort