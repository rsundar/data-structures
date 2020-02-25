def full_merge_sort(array)
    # write your code here
    len = array.length
    
    if len==1
      sorted = array
    else
      left, right = [array[0..(len/2).ceil], array[(len/2).ceil..-1]]
      left = full_merge_sort(left)
      right = full_merge_sort(right)
      nArray = merge(left, right)
    end
    nArray.map {|e| e.match(/[a-zA-Z]+/) }
  end
  
  def merge(left, right)
    combined = []
    until left.empty? || right.empty?
      index1 = left.first.map {|e| e.match(/\d+/).to_i }
      index2 = right.first.map {|e| e.match(/\d+/).to_i }
      item_to_index = index1 <= index2 ? left.shift : right.shift
      combined << item_to_index
    end
    combined.concat(left, right)
  end
  
  full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
  # => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
  