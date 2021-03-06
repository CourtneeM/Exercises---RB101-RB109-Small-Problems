# input: a string
# output: a new string that is the input string's value, but each character is doubled

# Rules
#  Explicit requirements
#  - a new string will be returned
#  - each character in the string will be doubled, including spaces
#  Implicit requirements
#  - empty string will return an empty string

# Test Cases
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
