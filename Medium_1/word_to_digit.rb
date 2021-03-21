# input: a string
# output: a string with the number strings converted to their integer form

# Test Cases
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Algorithm
# - create a constant called STRING_TO_DIGITS and set equal to { zero: 0, one: 1, etc... }
# - iterate over the split input string using map
#   - if the current element is a key in STRING_TO_DIGITS, return the value of that key
#   - otherwise return the current element
# - join the return value of map

# Tips

STRING_TO_DIGITS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
                     'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }.freeze

# def word_to_digit(str)
#   keys = STRING_TO_DIGITS.keys
#   str.split.map do |word|
#     if keys.include?(word)
#       STRING_TO_DIGITS[word]
#     elsif word.end_with?('.') && keys.include?(word[0..-2])
#       STRING_TO_DIGITS[word[0..-2]] + '.'
#     else
#       word
#     end
#   end.join(' ')
# end

# Further Exploration
# In progress

# def word_to_digit(str)
#   STRING_TO_DIGITS.keys.each do |word|
#     str.gsub!(/\b#{word}\b/i, STRING_TO_DIGITS[word])
#   end
#   str_index = str.split.select { |word| word if word.to_i.to_s == word }
#   digits_index = str_index.reject(&:nil?)
# end

# p word_to_digit('Please call me at Five five five One two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
