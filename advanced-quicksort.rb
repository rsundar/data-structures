def partition(array, start_index, stop_index)
    pivot = array[stop_index]

    i = start_index

    for j in start_index..stop_index
        if array[j] <= pivot
            array[i], array[j] = array[j], array[i]
            i = i + 1
        end
    end

    array[i], array[stop_index] = array[stop_index], array[i]

    i
end

def advanced_quicksort(array, first=0, last=array.length-1 )
    if first < last
        pivot = partition(array, first, last)

        puts "#{array}"

        advanced_quicksort(array, first, pivot-1)
        advanced_quicksort(array, pivot+1, last)
    end
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9