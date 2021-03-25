# Problem
#   - Given a string, calculate the percentage of lowercase characters, uppercase characters, or neither.
#     Store each percentage in a hash with lowercase, uppercase, and neither as the keys and the
#     values as their respective percentages.

# Input: a string
# Output: a hash

# Rules
#   Explicit requirements
#     - Store the percentages in a hash { lowercase: %, uppercase: %, neither: % }
#     - Assume the string will always contain one character.
#   Implicit requirements
#     - Spaces are included in the percentage calculation for neither.

# Test Cases
# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Data Structure
#   - a hash

# Algorithm
#   - Create a variable called total_characters and set equal to the length of the input string
#   - Create a hash called percentages.
#     - Include the keys: lowercase, uppercase, neither.
#     - Set the values of each to 0.
#   - Loop over the input string for the number of keys in percentages.
#     - Check for lowercase characters
#       - Increment the value of lowercase
#     - Check for uppercase characters
#       - Increment the value of uppercase
#     - Check for non-letter characters
#       - Increment the value of neither
#   - Take the value of each key in the percentages hash
#     - Divide the value by total_characters
#       - Save the result to itself

def letter_percentages(str)
  total_characters = str.size
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }

  percentages[:lowercase] = str.scan(/[a-z]/).size
  percentages[:uppercase] = str.scan(/[A-Z]/).size
  percentages[:neither]   = str.scan(/[\W\d]/).size

  percentages.each { |k, v| percentages[k] = round_value((v / total_characters.to_f) * 100) }
  percentages
end

# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Further Exploration

def round_value(value)
  value.round(2)
end

p letter_percentages('abcdefGHI') == { lowercase: 66.67, uppercase: 33.33, neither: 0.0 }
