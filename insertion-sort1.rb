def insertion_sort(array)
    # write your code here
    pivot = array.last
    
    i = array.length - 2
    
    while i>=0 && array[i] > pivot
      array[i+1] = array[i]
      i -= 1
      puts array.join(' ')
    end
    array[i+1] = pivot
    puts array.join(' ')
    
  end
  
  insertion_sort([1, 3, 2])
  # => 1 3 3
  #    1 2 3
  
  puts '-' * 20
  
  insertion_sort([1, 4, 6, 9, 3])
  # => 1 4 6 9 9
  #    1 4 6 6 9
  #    1 4 4 6 9
  #    1 3 4 6 9