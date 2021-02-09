def reverse_sentence(string)
  reversed_string = []

  string.split.each { |word| reversed_string.unshift(word) }
  reversed_string.join(' ')

  # or string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Write a method that takes one arugment, a string, and returns a new string with the words reversed.
# input: string
# output: string with words reversed
# things to consider:
#   If the user inputs a number => error and prompt again
#   If the user does not provide input => return true

# Test Cases:
# reverse_sentence('') == '' => true
# reverse_sentence('hello world') == 'world hello' => true
# reverse_sentence('Reverse these words') == 'words these Reverse' => true

# Algorithm
# Create an empty array called reversed_words.
# Split the string into an array and iterate over it.
# Push each word onto the reversed_words array.

# ------------------------------------------

# Pseudo-Code

# START

# Given a string, reverse the words in that string

# SET reversed_words = []

# split the string and iterate over it
# unshift each item onto the reversed_words array
# join the reversed_words array into a string

# END
