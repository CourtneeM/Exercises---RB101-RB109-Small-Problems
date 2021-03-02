# input: an array of strings
# output: the input array with vowels removed (a, e, i, o, u)

# Rules
#  Explicit requirements
#  - the input will be an array
#  - remove the vowels (a,e,i,o,u) from the input string
#  Implicit requirements
#  - modify the original array(?) - assume no

# Test Cases
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Algorithm
# - take the input array and use map to iterate over the string elements
#   - for each iteration, remove the vowels from the string and return the new string value
# - return the return value of map

# Tips
# use gsub(/[aeiou]/, '')

def remove_vowels(arr)
  arr.map { |string| string.gsub(/[aeiou]/i, '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
