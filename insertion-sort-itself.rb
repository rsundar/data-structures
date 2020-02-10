def sort_itself(array)
    # write your code here
    
    1.upto(array.length-1) do |i|
      j = i - 1
      pivot = array[i]
      while pivot < array[j] and j >= 0
        array[j+1] = array[j]
        j -= 1
      end
      array[j+1] = pivot
      puts array.join(' ')
    end
  end
  
  sort_itself([1, 4, 3, 6, 9, 2])
  # => 1 4 3 6 9 2
  #    1 3 4 6 9 2
  #    1 3 4 6 9 2
  #    1 3 4 6 9 2
  #    1 2 3 4 6 9