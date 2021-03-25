# Problem
#   - Write a method that accepts a string and replaces the words representing 1-9 with their digit form.
#     Output the string with only the number words changed.

# Input: a string
# Output: a string

# Questions
#   - What are the keywords to look for that need to be replaced?
#     - 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
#   - What is replacing the number words?
#     - '1', '2', '3', '4', '5', '6', '7', '8', '9'

# Rules
#   Explicit requirements
#     - Replace the number words in the input string with their digit form.
#   Implicit requirements
#     - An empty string returns an empty string.
#     - Replace the numbers in place, do not join them together.

# Test Cases

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# word_to_digit('The correct address is one seven seven eight Easy Street.') == 'The correct address is 1 7 7 8 Easy Street.'

# word_to_digit('Five past four is when we should meet up.') == '5 past 4 is when we should meet up.'

# word_to_digit('Five. Four. Seven nine eight.') == '5. 4. 7 9 8.'
# word_to_digit('') == ''

# Data Structure
#   - input: string
#   - output: string

# Algorithm
#   - Create a constant called DIGITS and set equal to a hash where the keys a the number words 1-9
#     and their values are their digit form
#   - For each key in DIGITS
#     - Check if that key matches any word in the input string
#       - Make sure the compared key is case insensitive
#     - Replace the input string word with the value associated with the matching key

# Further Exploration Algorithm
#   - Remove spaces between consecutive numbers.
#   - Get an array of the numbers found in the string.
#   - For each word in string
#     - Check if the word is a value in the DIGITS hash
#     - If it is, and the previous word was too

# Tips

DIGITS = { 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
           'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }.freeze

# def word_to_digit(str)
#   DIGITS.each { |word_number, digit| str.gsub!(/\b#{word_number}\b/i, digit) }
#   str
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# p word_to_digit('The correct address is one seven seven eight Easy Street.') == 'The correct address is 1 7 7 8 Easy Street.'

# p word_to_digit('Five past four is when we should meet up.') == '5 past 4 is when we should meet up.'

# p word_to_digit('Five. Four. Seven nine eight.') == '5. 4. 7 9 8.'
# p word_to_digit('') == ''

# Further Exploration => In progress

def word_to_digit(str)
  DIGITS.each { |word_number, digit| str.gsub!(/\b#{word_number}\b/i, digit) }
  p str.gsub!(/(\d)+/, '')
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5551234. Thanks.'

p word_to_digit('The correct address is one seven seven eight Easy Street.') == 'The correct address is 1778 Easy Street.'

p word_to_digit('Five past four is when we should meet up.') == '5 past 4 is when we should meet up.'

p word_to_digit('Five. Four. Seven nine eight.') == '5. 4. 798.'
p word_to_digit('') == ''
