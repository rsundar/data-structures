def running_time(array)
    # write your code here
    
    1.upto(array.length-1) do |i|
      j = i - 1
      pivot = array[i]
      while pivot < array[j] and j >= 0
        array[j+1] = array[j]
        j -= 1
        $insertion_counter += 1
      end
      array[j+1] = pivot
      # counter += 1
    end
  end
  
  def partition(array, first, last)
    pivot = array[last]
    
    j = first
    
    (first...last).each do |i|
      if array[i] < pivot
        array[i], array[j] = array[j], array[i]
        j += 1
        $quicksort_counter += 1
      end
    end
    array[j], array[last] = array[last], array[j]
    $quicksort_counter += 1
    j
  end
  
  def advanced_quicksort(array, start=0, last=array.length-1)
    
    if start < last
      pivot = partition( array, start, last )
      # puts "#{array}"
      advanced_quicksort(array, start, pivot-1)
      advanced_quicksort(array, pivot+1, last)
    end
  end
  
  def quicksort_running_time(array)
    # write your code here
    $insertion_counter = 0
    $quicksort_counter = 0
    running_time(array.clone)
    advanced_quicksort(array.clone)
    $insertion_counter - $quicksort_counter
  end
  
  puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
  # => 1
  puts $quicksort_counter
  puts $insertion_counter