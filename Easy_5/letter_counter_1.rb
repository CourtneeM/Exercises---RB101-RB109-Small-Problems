# input: a string with one or more space separated words
# output: a hash showing the number of words of different sizes { size: word_count }

# Rules
#  Explicit requirements
#   - words are any string of characters without a space
#   - accept a string
#   - return a hash
#  Implicit requirements
#   - punctuation is included in the word size of the word it is touching
#   - an empty string will return an empty hash
#   - case-sensitivity does not matter

# Test Cases
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# Algorithm
#  - initialize a variable called result and set equal to a hash with a default value of 0
#  - split the input string by its spaces and iterate over the array
#    - for each word, set the word size as a key in the result hash
#    - add 1 to that key's value
#  - return the result variable

def word_sizes(str)
  result = Hash.new(0)

  str.split.each do |word|
    result[word.size] += 1
  end

  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
