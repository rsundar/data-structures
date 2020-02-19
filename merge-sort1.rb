def merge_sort(array1, array2)
    # write your code here
    output = []
    i,j = 0,0
    
    while( i <= array1.length-1 && j <= array2.length-1)
      if array1[i] < array2[j]
        output << array1[i]
        i += 1
      else
        output << array2[j]
        j += 1
      end
    end
    
    if i < array1.length-1
      for k in (i..array1.length-1) do
        output << array1[k]
      end
    else
      for k in (j..array2.length-1) do
        output << array2[k]
      end
    end
    
    output
    
  end
  
  p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
  # => [1, 2, 3, 4, 6, 8, 9, 11]