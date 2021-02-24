# input: string
# output: an integer that is the sum of the ASCII values of the input string

# Rules
#  Explicit Requirements:
#   - the output will be the sum of the ASCII value of the input string
#  Implicit Requirements:
#   - the input must be a string
#   - if the string is empty then return 0
#   - case-sensitive when converting the string to ASCII values

# Questions
#  - Is whitespace included in the sum?  ## whitespace is 32, assume yes
#  - Are symbols or numbers in the string included?  ## Assume yes
#  - Do you return a new object or modify the original?  ## Return new object

# Test Cases
#  ascii_value('Four score') == 984
#  ascii_value('Launch School') == 1251
#  ascii_value('a') == 97
#  ascii_value('') == 0

# Algorithm
#  - initialize a variable called ascii_sum and set equal to zero
#  - loop through each character of the input string
#    - take the current char and convert it to its ASCII value
#    - add the current char's ASCII value to ascii_sum
#  - return ascii_sum

def ascii_value(str)
  ascii_sum = 0

  str.each_char { |char| ascii_sum += char.ord }
  ascii_sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Further Exploration
# Integer#chr
# char.ord.chr == char
