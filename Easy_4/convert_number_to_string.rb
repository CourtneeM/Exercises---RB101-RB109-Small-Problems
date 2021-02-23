# Write a method that takes a positive integer or zero, and converts it to a string representation.
# Do not use methods such as Integer#to_s, String(), Kernel#format, etc.

# input: an integer
# output: a string

# Test Cases:
# input: 4321
# output: '4321'
# input: 0
# output: '0'
# input: 5000
# output: '5000'

# Algorithm:
# Create a constant called CHARS and set equal to a hash with 0-9 as the keys, and their string representation as respective values.
# Split the integer parameter into an array with each digit as an item.
# Iterate over the split integer and find its string representation in CHARS.
# Join together the array representing the string value and return.

# Pseudo-Code:

# START

# # Given an integer, convert it into a string representation.

# SET CHARS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
#               5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

# ITERATE integer parameter.digits
#   CHARS[item]

# JOIN the new array and RETURN

# END

# -----------------------------------------------------------------------------

CHARS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
          5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }.freeze

def integer_to_string(num)
  return if num < 0

  num.digits.reverse.map { |digit| CHARS[digit] }.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
