def max_windowed_range(arr, window_size)
  current_max_range = nil
  i = 0
  last = (i + window_size)
  while last < arr.length
    last = (i + window_size)
    win_max = arr[i...last].max - arr[i...last].min
    current_max_range = win_max if current_max_range.nil? || win_max > current_max_range
    i += 1
  end
  current_max_range
end

# p max_windowed_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
# p max_windowed_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
# p max_windowed_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
# p max_windowed_range([1, 3, 2, 5, 4, 8], 5) #== 6 # 3, 2, 5, 4, 8
