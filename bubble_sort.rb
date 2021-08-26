def bubble_sort array_to_sort
  unsorted = true
  while unsorted do
    i = 0
    unsorted = false
    while i < (array_to_sort.length - 1)
      if array_to_sort[i] > array_to_sort[i + 1]
        array_to_sort[i], array_to_sort[i + 1] = array_to_sort[i + 1], array_to_sort[i]
        unsorted = true
      end
      i += 1
    end
  end
  p array_to_sort
end

bubble_sort([4,3,78,2,0,2])
