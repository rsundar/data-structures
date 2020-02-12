def running_time(array)
    # write your code here
    counter = 0
    
    1.upto(array.length-1) do |i|
      j = i - 1
      pivot = array[i]
      while pivot < array[j] and j >= 0
        array[j+1] = array[j]
        j -= 1
        counter += 1
      end
      array[j+1] = pivot
      # counter += 1
    end
    
    counter
  end
  
  puts running_time([2, 1, 3, 1, 2])
  # => 4