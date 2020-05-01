--
-- Jhonathan Paulo Banczek. 2020 - jpbanczek@gmail.com - github.com/jhoonb
--


local lsort = {}

---------------------------------------------------------------------
--                       Sorting Algorithm
---------------------------------------------------------------------
lsort.bubble_sort = require("algorithms.bubble_sort") -- in-place
lsort.insertion_sort = require("algorithms.insertion_sort") -- in-place
lsort.selection_sort = require("algorithms.selection_sort") -- in-place
lsort.merge_sort = require("algorithms.merge_sort") -- in-place
lsort.quick_sort = require("algorithms.quick_sort") -- in-place
lsort.counting_sort = require("algorithms.counting_sort") -- new table
lsort.gnome_sort = require("algorithms.gnome_sort") -- in-place
lsort.cocktail_sort = require("algorithms.cocktail_sort") -- in-place
lsort.odd_even_sort = require("algorithms.odd_even_sort") -- in-place

-- return module
return lsort