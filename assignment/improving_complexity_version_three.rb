# This method takes n arrays as input and combine them in sorted ascending  order
# re-written using bubble sort, which sorts in-place. Saves memory usage 

 def poorly_written_ruby(*arrays)
   combined_array = []
   arrays.each do |array|
       combined_array += array
   end
   return bubble_sort(combined_array)
end

def bubble_sort(array)
   n = array.length

   loop do
      swapped = false

      (n-1).times do |i|
         if array[i] > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
         end
      end

      break if not swapped
   end

   return array
 end

puts "#{poorly_written_ruby([9,12,3,7,5,11], [4,8,1,13], [15,2,10,14,6])}"
