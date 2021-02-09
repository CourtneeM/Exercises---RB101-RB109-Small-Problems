def is_odd?(num)
  absolute_num = num.abs

  absolute_num.odd?
end

puts is_odd?(5)
puts is_odd?(-2)
puts is_odd?(2)
puts is_odd?(1547)
puts is_odd?(200)
puts is_odd?(-4736)

# Write a method that takes one integer argument and returns true if the number's absolute value is odd. Assume the argument is a valid integer.

# inputs: integer
# outputs: boolean
# Things to consider -EXTRA- :
#   User does not input an integer
#   Strings will convert to 0 when to_i is used on them

# Test Cases
# is_odd?(3) => true
# is_odd?(-5) => true
# is_odd?(100) => false
# is_odd?(0) => false

# Convert the integer to its absolute value
# Check if the integer is odd and return true if odd, false if even

# -----------------------------------------------------

# Pseudo-Code

# START
# Given an integer, check if its absolute value is odd
#   SET absolute_num = absolute value of integer

#   check if absolute_num is odd
# END

# -------------------------------------------------------

# EXTRA with user input

# def is_odd?(num)
#   absolute_num = num.to_i.abs

#   absolute_num.odd?
# end

# puts "=> Hello, please enter a number."

# num = gets.chomp
# loop do
#   break unless num.empty?

#   puts "=> Invalid input. Please enter a number."
#   num = gets.chomp
# end

# puts is_odd?(num)
