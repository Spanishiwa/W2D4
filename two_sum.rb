def bad_two_sum?(arr, target_sum)
  (0...(arr.length - 1)).each do |idx|
    ((idx+1)...(arr.length)).each do |jdx|
      sum = arr[idx] + arr[jdx]
      return true if sum == target_sum
    end
  end
  false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)
  test_array = arr.dup
  while test_array.length > 1
    sum = test_array.first + test_array.last
    if sum == target_sum
      return true
    elsif sum < target_sum
      test_array.shift
    elsif sum > target_sum
      test_array.pop
    end
  end
  false
end

# arr = [0, 1, 5, 7]
# #
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false
# def two_sum?(arr, target_sum)
#   hash1 = Hash.new{ |h,k| h[k] = 0 }
#   arr.each_with_index do |n, idx|
#     return true if hash1.keys.any?{|n2| target_sum - n == n2}
#     hash1[n] = idx
#   end
#   false
# end

def two_sum?(arr, target_sum)
  hash1 = Hash.new{ |h,k| h[k] = 0 }
  hash2 = Hash.new{ |h,k| h[k] = 0 }
  arr.each_with_index{|n, idx| hash1[n] = idx }
  arr.each_with_index{|n, idx| hash2[n - target_sum] = idx }
  (hash1.keys - hash2.keys) != hash1.keys
end



arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
