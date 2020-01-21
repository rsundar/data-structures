def exact_sum?(k, coins)
    #write your code here
    return true if k==0
    return false if coins.empty? || k < 0
    
    exact_sum?(k-coins[0], coins[1...coins.length]) || exact_sum?(k, coins[1...coins.length])
  end
  
  puts exact_sum?(12, [1, 2, 3, 4, 5])
  # => true
  
  puts exact_sum?(11, [1, 5, 9, 13])
  # => false
  
  puts exact_sum?(125, [1, 100, 23, 42, 53, 2, 5, 20, 120])
  # => true