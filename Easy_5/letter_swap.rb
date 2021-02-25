# input: a string
# output: a string with the first and last letter of each word swapped

# Rules
#  Explicit Requirements
#   - every word contains at least one letter
#   - the string will not be empty
#   - the string only contains words and spaces
#  Implicit Requirements
#   - the swapped letters maintain their original case
#   - return a new object

# Questions
#  1. What if the string contains punctuation? # assume no punctuation

# Test Cases
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfew yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# Algorithm
#  - initialize a variable called sentence and set equal to the input string
#  - iterate over the words in the sentence variable
#    - initialize a variable called letter1 and set equal to word[0]
#    - initialize a variable called letter2 and set equal to word[-1]
#    - set word[0] equal to letter2
#    - set word[-1] equal to letter1
#  - Return the iterated sentence

def swap(str)
  sentence = str

  sentence.split.map do |word|
    letter1 = word.first
    letter2 = word.last

    word[0] = letter2
    word[-1] = letter1
    word
  end.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
