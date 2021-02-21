# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself)

# input: an integer
# output: an integer that is the square of the input integer

# Test Cases:
# input: 5
# output: 25
# input: -8
# output: 64

# Algorithm:
# Call the multiply method from within the new square method, using square's parameters as both arugments for multiply

# Pseudo-Code:

# START

# # Given an integer, return the square of the integer using the previous problem's multiply method.

# multiply(square's paramter, square's parameter)

# END

# -----------------------------------------------------------------------------

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25

# Further Exploration

def power_of_n(num, n)
  total = 1
  n.times { total = multiply(total, num) }
  total
end

p power_of_n(5, 2) # => 25
p power_of_n(8, 4) # => 4096
