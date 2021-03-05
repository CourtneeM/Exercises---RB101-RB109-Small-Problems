# input: a string
# output: a new string that swaps the case of each letter

# Rules
#  Explicit requirements
#  - return a new string
#  - do not use String#swapcase
#  - non-letter characters should not be changed

# Test Cases
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Algorithm
# - split the string and iterate over each character with empty string object
#   - if the current character is a lowercase letter
#     - convert the character to uppercase and concat to the string object
#   - else if the current character is an uppercase letter
#     - convert the character to lowercase and concat to the string object
#   - else
#     - concat the current character to the string object

# Tips
# - if a-z char.upcase, if A-Z char.downcase

def swapcase(str)
  str.split('').each_with_object('') do |char, swapped_str|
    swapped_str << if char =~ /[a-z]/
                     char.upcase
                   elsif char =~ /[A-Z]/
                     char.downcase
                   else
                     char
                   end
  end
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
