def stringy(num)
  stringy_string = ''
  count = 0

  while count < num
    count.even? ? (stringy_string += '1') : (stringy_string += '0')
    count += 1
  end

  stringy_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.
# input: positive integer
# output: string of 1s and 0s the length of the input integer
# things to consider:
#  For user input:
#   valid number?

# Test Cases:
# stringy(6) == '101010'
# stringy(9) == '101010101'
# stringy(4) == '1010'
# stringy(7) == '1010101'

# Algorithm:
# Create a variable named stringy_string and set to ''
# Create a variable named count and set to 0
# While count < integer
#   check if count is even, if so then append a '1' to stringy_string, if not then append a '0' to stringy_string
#   add 1 to count
# return stringy_string

# ---------------------------------

# Pseudo-Code
# START

# Given a positive integer, return a string of alternating 1s and 0s equal to the length of the integer

# SET stringy_string = ''
# SET count = 0

# WHILE count < integer
#   IF count is even
#     stringy_string = stringy_string + '1'
#   ELSE
#     stringy_string = stringy_string + '0'

#   count = count + 1

# stringy_string

# END

# further exploration

# def stringy(num, start = 1)
#   stringy_string = ''
#   count = 0

#   while count < num
#     if start == 1
#       count.even? ? (stringy_string += '1') : (stringy_string += '0')
#     else
#       count.even? ? (stringy_string += '0') : (stringy_string += '1')
#     end

#     count += 1
#   end

#   stringy_string
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(5, 0) == '01010'
# puts stringy(8, 0) == '01010101'
