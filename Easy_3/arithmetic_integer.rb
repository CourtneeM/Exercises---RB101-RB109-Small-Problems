# Write a program that prompt the user for two positive integers, and the prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power.

# input: Two positive integers
# output: The results of addition, subtraction, product, quotient, remainder, power of the two integers.

# Test Cases:
# input: 23, 17
# output: 23 + 17 = 40, 23 - 17 = 6, 23 * 17 = 391, 23 / 17 = 1, 23 % 17 = 6, 23 ** 17 = 141050039560662968926103

# Algorithm:
# Declare a constant called OPERATORS and add the necessary operators.
# GET first integer
# GET second integer
# Iterate through the OPERATORS constant, calling each operator on the two integers and printing the results.

# Pseudo-Code:

# START

# # Given two integers, print the results of addition, subtraction, product, quotient, remainder, and power of the two integers.

# SET OPERATORS = ['+', '-', '*', '/', '%', '**']
# GET num1
# GET num2

# Iterate through OPERATORS
#   PRINT the result of num1 operator num2

# END

# -----------------------------------------------------------------------------
OPERATORS = %w[+ - * / % **].freeze

puts 'Enter the first number:'
num1 = gets.chomp.to_i

puts 'Enter the second number:'
num2 = gets.chomp.to_i

OPERATORS.each { |operator| puts "#{num1} #{operator} #{num2} = #{num1.method(operator).(num2)}" }
