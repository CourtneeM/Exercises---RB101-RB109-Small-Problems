# input: a string
# output: a string that is the input string without any consecutive duplicate characters

# Rules
#  Explicit requirements
#   - there will be no consecutive repeating characters, alphabetic or non
#   - do not use String#squeeze or String#squeeze!
#   - return a new object
#  Implicit requirements
#   - an empty string will return an empty string

# Question
# 1. what if the word is normally spelled with consecutive characters? ex. squeeze, hello  # ignore

# Test Cases
#  crunch('ddaaiillyy ddoouubbllee') == 'daily double'
#  crunch('4444abcabccba') == '4abcabcba'
#  crunch('a') == 'a'
#  crunch('') == ''

# Algorithm
#  - initialize an array called squeezed_words and set equal to zero
#  - iterate over each character in the input string
#    - push the current character to squeezed_words, unless that character was the most recent pushed
#  - join the squeezed_words array into a string
#  - return squeezed_words

# Tips
# create an array and push each char onto it
# iterate through chars, use String#last to check for repeats

def crunch(str)
  squeezed_words = []
  str.each_char { |char| squeezed_words << char unless squeezed_words.last == char }
  squeezed_words.join('')

  # str.chars.each_with_object([]) { |char, arr| arr << char unless arr.last == char }.join('')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('a') == 'a'
p crunch('') == ''
