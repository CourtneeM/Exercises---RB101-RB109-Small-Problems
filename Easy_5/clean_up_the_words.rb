# input: a string consisting of words and non-alphabetic characters
# output: a string with the non-alphabetic characters replaced by spaces

# Rules
#  Explicit requirements
#   - the string will always be lowercase
#   - spaces will replace non-alphabetic characters
#   - if multiple non-alphabetic characters are in a row, only use one space to replace them
#  Implicit requirements
#   - the string will always contain alphabetic characters
#   - return the original object

# Test Cases
#  cleanup("---what's my +*& line?") == ' what s my line '

# Algorithm
#  - take the input string and replace all non-alphabetic characters with spaces
#    - use regex to locate non-alphabetic characters
#    - use a substitution method to replace the non-alphabetic characters with spaces
#  - for consecutive spaces:
#    - use a method to reduce multiple occurances to one
#  - return the the alphabetic string

# Tip
# use gsub!(/[^a-z]/, " ").squeeze(" ") to replace all non-alphabetic characters with spaces, then reduce the spaces to one

def cleanup(str)
  str.gsub(/[^a-z]/, " ").squeeze(" ")
end

p cleanup("---what's my +*& line?") == ' what s my line '
