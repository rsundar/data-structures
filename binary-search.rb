def sqrt(number)
    sqrt_recursive(number, 0, number)
end
  
def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  
  mid = min_interval + (max_interval - min_interval)/2
  mid_squared = mid ** 2
  return mid if mid_squared == number
  return sqrt_recursive(number, mid+1, max_interval) if mid_squared < number
  return sqrt_recursive(number,min_interval, mid-1) if mid_squared > number
end

puts sqrt(25)
puts sqrt(7056)