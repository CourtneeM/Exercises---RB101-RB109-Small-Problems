# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other numbers, and then computes the sum of those multiples.

# input: an integer
# output: an integer

# Test Cases:
# input: 5
# output: 8
# input: 10
# output: 33

# Algorithm:
# Turn the input integer into a range and array, (1..integer).to_a
# Iterate over the array and check if each number is a multiple of 3 or 5
# If so then push to an array called multiples
# Add all of the array values together and return the result.

# Pseudo-Code:

# START

# # Given an integer, find the sum of the multiples of 3 or 5 that are in the range of 1 to the input integer.

# SET array = (1..integer).to_a
# multiples = ITERATE array
#   IF item % 3 == 0 || item % 5 == 0

# multiples.reduce { |sum, num| sum + num }

# END

# -----------------------------------------------------------------------------

def multisum(num)
  array = (1..num).to_a
  multiples = array.select { |n| n % 3 == 0 || n % 5 == 0 }

  multiples.sum
  # multiples.reduce(&:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
