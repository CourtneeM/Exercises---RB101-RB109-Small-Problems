# Write a method that takes an integer, and converts it into a string representation with a positive or negative sign.

# input: an integer
# output: a string

# Test Cases:
# input: 4321
# output: '+4321'
# input: -123
# output: '-123'
# input: 0
# output: 0

# Algorithm:
# Use the integer_to_string method from the previous exercise.
# Create a variable called str and set equal to the result of integer_to_string(integer parameter)
# If integer parameter is positive
#   insert '+' at the beginning of the string
# If integer parameter is negative
#   insert '-' at the beginning of the string
# Return string

# Pseudo-Code:

# START

# # Given an integer, convert it to a string with a positive or negative sign.

# IMPORT integer_to_string

# SET str = integer_to_string(integer)

# IF integer > 0
#   str.insert(0, '+')
# ELSIF integer < 0
#   str.insert(0, '-')

# RETURN str

# END

# -----------------------------------------------------------------------------

CHARS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
          5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }.freeze

def integer_to_string(num)
  num.digits.reverse.map { |digit| CHARS[digit] }.join
end

def signed_integer_to_string(num)
  str = integer_to_string(num.abs)

  if num > 0
    str.insert(0, '+')
  elsif num < 0
    str.insert(0, '-')
  end

  str
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
