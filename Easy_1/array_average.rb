def average(arr)
  sum = 0

  arr.each { |n| sum += n }

  sum / arr.length
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.
# input: an array of positive integers
# output: an integer
# things to consider:
#  the array will never be empty
#  the array will only have positive numbers

# Test Cases:
#  average([1, 6]) == 3  => true # (1 + 6) / 2 -> 3
#  average([1, 5, 87, 45, 8, 8]) == 25 => true
#  average([9, 47, 23, 95, 16, 52]) == 40 => true

# Algorithm:
# Create a variable called sum and set to 0
# iterate over the array, adding each item to sum
# divide sum by the length of the array
# return sum

# ----------------------------------------

# Pseudo-Code

# START

# Given an array of positive integers, return the average of those integers

# SET sum = 0

# iterate over array
#   sum = sum + array item

# sum / length of array

# END


# further exploration

# def average(arr)
#   sum = 0.0

#   arr.each { |n| sum += n }

#   (sum / arr.length).round(1)
# end

# puts average([1, 6]) == 3.5
# puts average([1, 5, 87, 45, 8, 8]) == 25.7
# puts average([9, 47, 23, 95, 16, 52]) == 40.3
