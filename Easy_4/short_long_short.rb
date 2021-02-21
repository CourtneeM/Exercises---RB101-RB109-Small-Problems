# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the results of concatenating the shorter string, the longer string, and the shorter string again. Assume the strings are different lengths.

# input: two strings
# output: a string

# Test Cases:
# input: 'abc', 'defgh'
# output: 'abcdefghabc'
# input: '', 'xyz'
# output: 'xyz'

# Algorithm:
# Check which string is longer.
# If str1 is longer than str2
#   str2 + str1 + str2
# If str2 is longer than str1
#   str1 + str2 + str1

# Pseudo-Code:

# START

# # Given two strings, determine which string is longer and sandwich it between the shorter string.

#  return str2 + str1 + str2 IF str1.size > str2.size
#  return str1 + str2 + str1 IF str2.size > str1.size
# END

# -----------------------------------------------------------------------------

def short_long_short(str1, str2)
  return str2 + str1 + str2 if str1.size > str2.size
  return str1 + str2 + str1 if str2.size > str1.size
end

p short_long_short('abc', 'defgh') == 'abcdefghabc'
p short_long_short('abcde', 'fgh') == 'fghabcdefgh'
p short_long_short('', 'xyz') == 'xyz'
