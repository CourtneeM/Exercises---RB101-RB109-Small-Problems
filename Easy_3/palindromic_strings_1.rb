# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. Case matters as does punctuation.

# input: a string
# output: a Boolean value

# Test Cases:
# input: 'madam'
# output: true
# input: 'Madam'
# output: false

# Algorithm:
# If starting_string.reverse == starting_string then return true, otherwise false

# Pseudo-Code:

# START

# # Given a string, return true if that string is a palindrome, false otherwise.

# IF string.reverse == string
#   true
# ELSE
#   false

# END

# -----------------------------------------------------------------------------

def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?('madam i\'m adam') == false
p palindrome?('356653') == true
