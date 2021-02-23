# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of these methods: String#to_i, Integer()

# input: a string
# output: an integer

# Test Cases:
# input: '4321'
# output: 4321
# input: '570'
# output: 570

# Algorithm:


# Pseudo-Code:

# -----------------------------------------------------------------------------

def string_to_integer(str)
  digits = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
             '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

  digits = str.split('').map { |letter| digits[letter] }
  digits.inject { |a, i| a * 10 + i }
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Further Exploration

# def hexadecimal_to_integer(str)
#   hex = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
#           'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13,
#           'E' => 14, 'F' => 15 }

#   digits = str.split('').map { |letter| hex[letter] }
#   digits.inject { |a, i|  a * 16 + i }
# end

# p hexadecimal_to_integer('4D9F') == 19871
