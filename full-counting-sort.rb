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
    
    output = Array.new(0,array.length-1)
    
    
  end
  
  p full_counting_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
  # => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]