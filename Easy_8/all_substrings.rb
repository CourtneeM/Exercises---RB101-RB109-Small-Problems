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

def substrings(str)
  sub_strings = []
  starting_position = 0

  loop do
    ending_position = 1

    str.split('').each do |_|
      sub_strings << str[starting_position, ending_position]
      ending_position += 1

      break if sub_strings[-1][-1] == str[-1]
    end

    starting_position += 1
    break if sub_strings[-1] == str[-1]
  end

  sub_strings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
