# input: a string
# output: an array that contains all the substrings of the input string

# Rules
#  Explicit requirements
#  - find all the substrings for one letter then move to the next
#  - substrings for each letter should be in shortest to longest order

# Test Cases
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

def leading_substrings(str)
  sub_strings = []

  str.split('').each_with_index { |_, index| sub_strings << str[0, index + 1] }

  sub_strings
end

def substrings(str)
  sub_strings = []
  (0...str.size).each do |start_index|
    inner_substring = str[start_index..-1]
    sub_strings << leading_substrings(inner_substring)
  end

  p sub_strings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
