def counting(array)
    # write your code here
    output = {}
    (0..99).each do |i|
      output[i] = array.count(i)
    end
    out = output.values
  end
  
  def full_counting_sort(array)
    # write your code here
    strings_array = []
    numbers_array = []
    array.each do |e|
      m = e.match /(\d+) (\w+)/
      strings_array << m[2].to_s
      numbers_array << m[0].to_i
    end
    
    k = numbers_array.max + 1
    counts = Array.new(k,0)
    numbers_array.each { |e| counts[e] += 1 }
    
    (1...k).each { |e| counts[e] += counts[e-1] }
    
    sorted = []
    
    # start from highest index and count down due to right shift in counting sort.
    (array.length-1).downto(0).each do |i|
      counts[numbers_array[i]] -= 1
      sorted[counts[numbers_array[i]]] = strings_array[i]
    end
    
    sorted
  end
  
  p full_counting_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
  # => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]