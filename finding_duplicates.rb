require 'set'

def find_duplicates(array)
  # write your code here
  s = Set.new
  out = []
  
  array.select { |n| s.add?(n).nil? }
  # array.each_with_index do |i,j|
  #   if s.add?(i).nil? 
  #     out << i
  #   end
  # end
  # out
end

p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
# => [1, 5, 2]

p find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])
# => [-43]

p find_duplicates([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509])