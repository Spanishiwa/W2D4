def first_anagram?(first_string, second_string)
  letters = first_string.split("")
  words = letters.permutation(letters.length).to_a
  words = words.map {|letters| letters.join("")}
  words.include?(second_string)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(first_string, second_string)
  first_letters = first_string.split("")
  second_letters = second_string.split("")
  first_letters - second_letters == []
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

# p first_anagram?("basiparachromatin", "marsipobranchiata")
# p second_anagram?("basiparachromatin", "marsipobranchiata")

def third_anagram?(first_string, second_string)
  first_string.split('').sort == second_string.split('').sort
end

def fourth_anagram?(first_string, second_string)
  hash1 = Hash.new{|h, k| h[k] = 0}
  hash2 = Hash.new{|h, k| h[k] = 0}
  first_string.split('').each{|ch| hash1[ch] += 1}
  second_string.split('').each{|ch| hash2[ch] += 1}
  hash1 == hash2
end
# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

def bonus?(first_string, second_string)
  hash = Hash.new {|h,k| h[k] = [0,0] }
  first_string.split('').each{|ch| hash[ch][0] += 1}
  second_string.split('').each{|ch| hash[ch][1] += 1}
  hash.values.all? {|count_arr| count_arr[0] == count_arr[1] }
end

p bonus?("gizmo", "sally")    #=> false
p bonus?("elvis", "lives")    #=> true
