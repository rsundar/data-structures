def partition(array, pivot)
  small = []
  big = []
  array[0..array.length-1].each do |i|
    if i < pivot
      small << i
    else
      big << i
    end
  end
  return [small, big]
end

def simple_quicksort(array)
  return array if array.size < 2
  pivot = array.shift
  small, big = partition(array, pivot)
  p (simple_quicksort(small) + [pivot] + simple_quicksort(big))
end
#p partition([2,5,6,7,1,3,4,0,8,9],0,[2,5,6,7,1,3,4,0,8,9].length()-1)
#p simple_quicksort([2,5,6,7,1,3,4,0,8,9])
p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10