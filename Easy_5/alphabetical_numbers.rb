# input: an array of integers between 0 and 19
# output: an array of the input, but sorted alphabetically based on their English word

# Rules
#  Explicit requirements
#   - the input will be an array of the range, 0..19
#   - the output will be the input sorted alphabetically based on their English word

# Test Cases
#  alphabetic_number_sort((0..19).to_a) == [
#    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#    6, 16, 10, 13, 3, 12, 2, 0
#  ]

# Algorithm
#  - initialize a variable called NUMBER_WORDS and set equal to the numbers 0-19 as the keys and their
#    English word as their respective values
#  - take the input array and sort by NUMBER_WORDS[current_element]
#  - return the sorted array

# Tips
# create a hash with the number's English word, { 8 => 'eight' }
# use Hash#sort_by { |k, v| v } to sort the hash by value

NUMBER_WORDS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
                 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
                 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
                 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
                 18 => 'eighteen', 19 => 'nineteen' }.freeze

def alphabetic_number_sort(arr)
  arr.sort_by { |num| NUMBER_WORDS[num] }
  # arr.sort { |a, b| NUMBER_WORDS[a] <=> NUMBER_WORDS[b] }
end

p alphabetic_number_sort((0..19).to_a) == [
    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
    6, 16, 10, 13, 3, 12, 2, 0]
