# This method takes n arrays as input and combine them in sorted ascending  order
# It was imrpoved by using merge sort 

 def poorly_written_ruby(*arrays)
     
     # create an empty combined array
     combined_array = []
     
     # for each array in the arrays object, add it to the combined array
     arrays.each do |array|
         combined_array += array
     end

     return combined_array
end

def mergeSort(array)
    # sorted_array = [array.delete_at(0)]
     
    # perform a merge sort
	# if the array is 1 item long, consider it sorted and exit  
    if array.count <= 1
        return array
    end

    mid = array.count / 2
    left = mergeSort array.slice(0, mid)
    right = mergeSort array.slice(mid, array.count - mid)

    array = []
    offset_left = 0
    offset_right = 0

    while offset_left < left.count && offset_right < right.count
        a = left[offset_left]
        b = right[offset_right]

        # Take the smallest of the two, and push it on our array
        if a <= b
            array << a
            offset_left += 1
        else
            array << b
            offset_right += 1
        end
    end

    # There is at least one element left in either part_a or part_b (not both)
    while offset_left < left.count
        array << left[offset_left]
        offset_left += 1
    end

    while offset_right < right.count
        array << right[offset_right]
        offset_right += 1
    end

    return array 
 end

combined_array = poorly_written_ruby([9,2,13,4,10,15,1], [14,3,11,7], [8,12,6,5])
puts "#{mergeSort(combined_array)}"
