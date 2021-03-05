# input: a string
# output: a new string that is the value of the input string but with each word capitalized and the rest lowercase

# Rules
#  Explicit requirements
#  - return a new string
#  - capitalize the first character of each word
#  - the rest of the word should be lowercase
#  Implicit requirements
#  - the character in position 0 of each word should be capitalized

# Test Cases
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Algorithm
# - create a variable called converted_str and set equal to the input string lowercased
# - split the input string where each word is an element and map over each word, set equal to converted_str
#   - convert the word to lowercase
#   - convert the character in position 0 of the word into uppercase
# - join converted_str and return

def word_cap(str)
  # str.split.map(&:capitalize).join(' ')

  converted_str = str.downcase.split
  converted_str.map! do |word|
    word[0] = word[0].upcase
    word
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
