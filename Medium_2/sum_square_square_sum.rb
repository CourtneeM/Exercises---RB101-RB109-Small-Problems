# Problem
#   - Given an integer, compute the difference between the square of the sum of the first n
#     positive integers and the sum of the squares of the first n positive integers.

# Input: an integer
# Output: an integer

# Rules
#   Explicit requirements
#     - Find the square of the sum of the first n positive integers.
#     - Find the sum of the squares of the first n positive integers.
#     - Return the difference between the two.
#   Implicit requirements
#     - Assume the input will always be a positive integer.

# Test Cases
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# Data Structure
#   - an integer

# Algorithm
#   - Create a variable called num_list and set equal to an array with the
#     numbers one to the input integer as its elements.
#     - [1, 2, 3, 4, n..]
#   - Create a variable called square_of_sum and set it equal to the square of
#     the sum of num_list.
#     - Sum num_list and square it.
#   - Create a variable called sum_of_squares and set it equal to the sum of the
#     squares of the values from num_list.
#     - Square each number in num_list then add them together.
#   - Subtract sum_of_squares from square_of_sum and return the result.

def sum_square_difference(num)
  num_list = (1..num).to_a
  square_of_sum = num_list.sum**2
  sum_of_squares = num_list.map { |n| n**2 }.sum

  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
