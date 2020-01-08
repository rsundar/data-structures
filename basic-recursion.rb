def sum(number)
    # Your code here
    number <= 1? number: number + sum(number-1)
end
  
puts sum(4)
puts sum(10)