def digit_list(num)
  num_array = []
  str_num = num.to_s

  str_num.each_char { |n| num_array.push(n.to_i) }

  p num_array
  num_array

  # short method => num.to_s.chars.map(&:to_i)
end

# puts digit_list(382) == [3, 8, 2]
# puts digit_list(2) == [2]
# puts digit_list(28301) == [2, 8, 3, 0, 1]

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number
# inputs: a positive integer
# outputs: an array of the integer's digits
# things to consider:
#   What if the number is negative?
#   What if the input is not a number?
#   What if the input is zero?

# Test Cases:
# digit_list(4882) == [4, 8, 8, 2] => true
# digit_list(-382) == [3, 8, 2] => false
# digit_list(2) == [2] => true
# digit_list('hello') => error

# ---------------------------------------

# Pseudo-Code

# START

# Given a positive integer, take it and split it into an array with each digit being an array item

# SET num_array = []
# SET str_num = integer.to_s

# iterate over str_num
# push current item on to num_array as an integer

# num_array

# END
