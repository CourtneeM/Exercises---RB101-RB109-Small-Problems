# input: a positive integer, n
# output: a right triangle whose sides have n stars

# Rules
#  Explicit requirements
#  - the input will be a positive integer
#  - the bottom right of the triangle will be the corner
#  - the triangle will be represented by *

# Test Cases
# triangle(5)
#     *
#    **
#   ***
#  ****
# *****
# triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# Algorithm
# - create a variable called row and set equal to "\s" * input integer
# - split the row variable and iterate over it
#   - set (last element + index) to represent a star
#   - output row

# Tips

def triangle(n)
  row = "\s" * n
  row.split('').each_with_index do |_, index|
    row[-1 + -index] = '*'
    puts row
  end
end

triangle(5)
triangle(9)
