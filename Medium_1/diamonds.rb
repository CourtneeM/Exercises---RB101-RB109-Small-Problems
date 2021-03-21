# input: an odd integer
# output: a 4 pointed diamond in an n x n grid

# Rules
#  Explicit requirements
#  - the integer will always be odd
#  Implicit requirements
#  - the diamond will be as tall as it is wide
#  - starting with a one star row, each row of the diamond will be 2 stars larger until it reaches the middle
#  - after the middle row, the rows will be 2 stars smaller until it reaches 1 star

# Test Cases
# diamond(1)
# *

# diamond(3)
#  *
# ***
#  *

# diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# Problem
# Create a diamond in an n x n grid

# Data Structure
# a string "*", output multiple to form the diamond

# Algorithm
# - create a variable called star and set equal to "*"
# - create a variable called half and set equal to (n / 2.0).ceil
# - create a variable called stars_per_row and set equal to 1
# - create an upto loop from 1 up to n
#   - output star * stars_per_row
#   - increment stars_per_row by 2 if index < half, otherwise, decrement stars_per_row by 2

# def diamond(n)
#   star = '*'
#   stars_per_row = 1
#   half = (n / 2.0).ceil

#   1.upto(n) do |iteration_num|
#     puts (star * stars_per_row).center(n)
#     iteration_num < half ? stars_per_row += 2 : stars_per_row -= 2
#   end
# end

# diamond(1)
# diamond(3)
# diamond(9)

# Further Exploration

# look for index 0 or -1 of that row

def diamond(n)
  half = (n / 2.0).ceil
  spaces_per_row = 1

  1.upto(n) do |iteration_num|
    if iteration_num == 1 || iteration_num == n
      puts '*'.center(n)
    else
      puts ('*' + ("\s" * spaces_per_row) + '*').center(n)
      iteration_num < half ? spaces_per_row += 2 : spaces_per_row -= 2
    end
  end
end

diamond(5)
diamond(9)
