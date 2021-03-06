def leading_substrings(str)
  sub_strings = []

  str.split('').each_with_index { |_, index| sub_strings << str[0, index + 1] }

  sub_strings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
