def partition(array)
    # write your code here
    pivot = array.first
    
    small = []
    big = []
    
    (1..array.length()-1).each do |i|
      if array[i] < pivot
        small << array[i]
      else
        big << array[i]
      end
    end
    
    (small + [pivot] + big)
  end
  
  p partition([4, 5, 3, 9, 1])
  # => [3, 1, 4, 5, 9]