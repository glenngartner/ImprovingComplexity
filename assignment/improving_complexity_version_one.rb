# This method takes n arrays as input and combine them in sorted ascending  order
 def poorly_written_ruby(*arrays)
   combined_array = []
   arrays.each do |array|
       combined_array += array # eliminate a sub-loop
   end

   sorted_array = [combined_array.delete_at(0)]

   for val in combined_array # for each value in combined_array
     i = 0 # initialize i to 0
     while i < sorted_array.length 
       if val <= sorted_array[i] # if the current value in c_a <= s_a[i]
         sorted_array.insert(i, val) # insert value before current value
         break
       elsif i == sorted_array.length - 1 # if we're at the end of the array
         sorted_array << val # append the value at the end
         break
       end
       i+=1
     end
   end

   # Return the sorted array
   sorted_array
 end

puts "#{poorly_written_ruby([13,2,4,1,9, 12], [3,14,7,10], [11,8,6,15,5])}"
