# This method takes n arrays as input and combine them in sorted ascending  order
 def poorly_written_ruby(*arrays)

	 # perform a merge sort
	# if the array is 1 item long, consider it sorted and exit  
    if array.count <= 1
        return array
    end

    mid = array.count / 2
    left = mergesort array.slice(0, mid)
    right = mergesort array.slice(mid, array.count - mid)

    # 2. Conquer
    array = []
    offset_a = 0
    offset_b = 0

    while offset_a < left.count && offset_b < right.count
        a = left[offset_a]
        b = right[offset_b]

        # Take the smallest of the two, and push it on our array
        if a <= b
            array << a
            offset_a += 1
        else
            array << b
            offset_b += 1
        end
    end

    # There is at least one element left in either part_a or part_b (not both)
    while offset_a < part_a.count
        array << left[offset_a]
        offset_a += 1
    end

    while offset_b < part_b.count
        array << right[offset_b]
        offset_b += 1
    end

    return array 
 end
