# Write another palindrome method, but this one is case-insensitive and ignores all non-alphanumeric characters.

# input: a string
# output: a Boolean value

# Test Cases:
# input: 'madam'
# output: true
# input: 'Madam'
# output: true

# Algorithm:
# Create a variable called stripped_str and set equal to the string with the regex pattern removed.
# Check if stripped_str set to lowercase and reversed is equal to string with regex pattern removed.

# Pseudo-Code:

# START

# # Given a string, return true if it is equal to itself when case-insensitive and only alphanumeric characters.

# SET stipped_str = string with only alphanumeric characters
# RETURN stripped_str.downcase.reverse == stipped_str.downcase

# END

# -----------------------------------------------------------------------------

def real_palindrome?(str)
  stripped_str = str.gsub(/[^a-zA-Z0-9]/, '')
  stripped_str.downcase.reverse == stripped_str.downcase
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?('Madam, I\'m Adam') == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

