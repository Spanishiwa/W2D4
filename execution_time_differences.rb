def largest_contiguous_subsum(list)
  largest = 0
  current_subsum = 0

  list.each do |el|
    current_subsum += el
    largest = current_subsum if current_subsum > largest
    current_subsum = 0  if current_subsum < 0
  end
  largest
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])


# def largest_contiguous_subsum(list)
#   largest = list.first
#   list.each_index do |start_pos|
#     subsum = list[start_pos]
#     ((start_pos+1)...(list.length)).each do |end_pos|
#       subsum += list[end_pos]
#       largest = subsum if subsum > largest
#     end
#   end
#   largest
# end
# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

# Phase I
# def my_min(arr)
#   sorted = false
#   until sorted
#     sorted = true
#     arr.each_with_index do |el, idx|
#       next if idx == arr.length - 1
#       if arr[idx] > arr[idx + 1]
#         arr[idx],arr[idx + 1 ] = arr[idx + 1], arr[idx]
#         sorted = false
#       end
#     end
#   end
#   arr.first
# end
#
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)


# Phase II
# def my_min(arr)
#   smallest = arr.first
#   arr.each do |el|
#     smallest = el if el < smallest
#   end
#   smallest
# end
#
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)
