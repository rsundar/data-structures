def partition(array, begin_index, end_index)
    # take the last element as the pivot
    pivot = array[end_index]
    # use another index for holding the greater value
    # use the first element as the initial greater value
    j = begin_index
    for i in begin_index...end_index
      if array[i] < pivot
        # swap the current element with the memorized greater element
        array[i], array[j] = array[j], array[i]
        # increment the greater index
        j += 1
      end
    end
    # the current placement will be [smaller elements, greater elements, pivot]
    # then you need to swap the pivot with the last element of the greater group
    array[end_index], array[j] = array[j], array[end_index]
    # return the index of the pivot
    j
  end
  
  def simple_quicksort(array, begin_index = 0, end_index = array.length - 1)
    # divide the problem until there's a sub-array between the begin and end indices
    if begin_index < end_index
      # partition the array
      pivot = partition(array, begin_index, end_index)
      # print the resulting array after each partition
      puts "#{array}"
      # solve the sub-problem that includes the elements smaller than the pivot
      simple_quicksort(array, begin_index, pivot - 1)
      simple_quicksort(array, pivot + 1, end_index)
    end
  end
  
  
  #p partition([2,5,6,7,1,3,4,0,8,9],0,-1)
  p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
  # => 2 3
  #    1 2 3
  #    7 8 10
  #    1 2 3 5 7 8 10