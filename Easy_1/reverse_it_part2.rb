def reverse_words(string)
  reversed_words = []

  string.split.each do |word|
    word.length >= 5 ? reversed_words.push(word.reverse) : reversed_words.push(word)
  end

  reversed_words.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and space. Spaces should be included only when more than one word is present.
# input: a string of only letters and spaces
# output: returns the string with words five or more characters long reversed
# things to consider:
#   Check for valid input, only letters and spaces

# Test Cases:
#  reverse_words('Professional') => 'lanoisseforP'
#  reverse_words('Walk around the block') => 'Walk dnuora the kcolb'
#  reverse_words('Launch School') => 'hcnuaL loohcS'

# Algorithm:
# Create a new array called reversed_words and set it equal to the return value from iterating over the split string
# Iterate over the string
# Include an if statement for if word.length >= 5
#   reverse the word and push onto the reversed_words array
# If the word is less than 5 characters in length then push onto the reversed_words array with no changes
# Join reversed_words and return

# ------------------------------------

# Pseudo-Code

# START

# Given a string, reverse the word in the string if the word length is greater than or equal to five 

# SET reversed_words = []

# split string and iterate over it
#   IF word.length >= 5
#     push reversed word onto reversed_words
#   ELSE
#     push word onto reversed_words

#   join reversed_words into a string

# END
