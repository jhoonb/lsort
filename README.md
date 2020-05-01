# lsort

Sorting algorithm in Lua - Algoritmos de Ordenação em Lua
===

* [Bubble Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/bubble_sort.lua)
* [Insertion Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/insertion_sort.lua)
* [Selection Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/selection_sort.lua)
* [Counting Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/counting_sort.lua)
* [Merge Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/merge_sort.lua)
* [Quick Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/quick_sort.lua)
* [Gnome Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/gnome_sort.lua)
* [Cocktail Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/cocktail_sort.lua)
* [Odd-even Sort](https://github.com/jhoonb/lsort/blob/master/algorithms/odd_even_sort.lua)

Module [utils.lua](https://github.com/jhoonb/lsort/blob/master/algorithms/utils.lua). Functions:
====

- utils.jointables(t[, ...]) --> in-place
 
- utils.slicetable(t[, ibegin[, iend[, step] ] ])table

- utils.minmax(vet) --> number, number

- utils.newarray(size[, value]) --> table

- utils.newarrayrandom(size[, m[, n] ]) --> table

- utils.cmp(veti, vetj) --> boolean

- utils.copy(vet) --> table

Test File: [test_lsort.lua](https://github.com/jhoonb/lsort/blob/master/test_lsort.lua)
====

```lua test_lsort.lua```