def sum(num)
  num.to_s.split('').map(&:to_i).reduce(&:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
# input: a positive integer
# output: an integer that is the sum of the input integer's digits
# things to consider:

# Test Cases:
#  sum(23) == 5
#  sum(496) == 19
#  sum(123_456_789) == 45

# Algorithm:
# Turn the integer into a string and split it
# Iterate over the split string using reduce or inject
