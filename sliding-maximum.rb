def sliding_maximum(k, array)
    # your code here
    output = []
    len = array.length
    
    (len-k+1).times do |i| 
      output << array.slice(i,k).max
    end
    
    output
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
