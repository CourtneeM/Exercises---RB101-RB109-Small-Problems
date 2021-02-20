# Write a method that returns true if its integer argument is palindromic, false otherwise.

# input: an integer
# output: a Boolean value

# Test Cases:
# input: 34543
# output: true
# input: 123210
# output: false

# Algorithm:
# Compare the starting integer to the same integer converted to a string and reversed, and converted back to an integer.

# Pseudo-Code:

# START

# # Give an integer, check if the integer is a palindrome.

# RETURN integer.to_s.reverse.to_i == integer

# END

# -----------------------------------------------------------------------------

def palindromic_number?(num)
  num.to_s.reverse.to_i == num
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
