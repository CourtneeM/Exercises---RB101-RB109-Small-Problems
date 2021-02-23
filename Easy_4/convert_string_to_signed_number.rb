# Write a method that takes a string of digits, and returns the appropriate number as an integer. The string may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, return a positive number.
# You may not use standard conversion methods in Ruby, such as String#to_i or Integer().

# input: a string
# output: an integer

# Test Cases:
# input: '4321'
# output: 4321
# input: '-570'
# output: 570
# input: '+100'
# output: 100

# Algorithm:
# Bring in string_to_integer method from previous exercise.
# If the string includes '-' then convert the result from string_to_integer into a negative number and return.
# Else return the result from string_to_integer.

# Pseudo-Code:

# START

# # Given a string, convert that string to an integer that is either positive or negative depending on the sign given. If no sign is given, return a positive number.

# IMPORT string_to_integer

# num = string_to_integer(str)

# IF str includes '-'
#   RETURN num - num - num

# RETURN num
# END

# -----------------------------------------------------------------------------

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }.freeze

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  digits.reduce(0) { |sum, digit| 10 * sum + digit }
end

def string_to_signed_integer(str)
  sign = str.slice!(0, 1) if str.include?('-') || str.include?('+')
  num = string_to_integer(str)

  sign == '-' ? -num : num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
