# input: a string
# output: an array of substrings that are palindromic

# Rules
#  Explicit requirements
#   - the return order should be in the same order as it appeared in the string
#   - duplicate palindromes can appear multiple times in the output array
#   - single characters are not palindromes
#  Implicit requirements
#   - no palindromes will return an empty array as the output

# Test Cases
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# Algorithm
# - use the substrings method from the previous exercise
#   - save the return value to a variable called substrings
# - iterate over the substrings array with select
#   - check if the current element is equal to itself reversed
#   - if true, then return the current element

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

  sub_strings.flatten
end

def palindromes(str)
  substrings = substrings(str)

  substrings.select do |substring|
    substring if substring == substring.reverse && substring.length > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
