puts "=> Please enter an integer greater than 0"
num = gets.chomp
loop do
  break if num.to_i.to_s == num && num.to_i != 0
  puts "=> Hmm... that doesn't look right."
  puts "=> Please enter an integer greater than 0"
  num = gets.chomp
end

puts "=> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

num_range = (1..num.to_i).to_a
valid_operation = false
result = 0

loop do
  result = case operation.downcase
            when 's'
              valid_operation = true
              operation = 'sum'
              num_range.reduce { |sum, n| sum + n }
            when 'p'
              valid_operation = true
              operation = 'product'
              num_range.reduce { |sum, n| sum * n }
            else
              puts "=> Hmm... that doesn't look right."
              puts "=> Enter 's' to compute the sum, 'p' to compute the product."
              operation = gets.chomp
            end
  break if valid_operation
end

puts "The #{operation} of the integers 1 and #{num} is #{result}."


# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# input: an integer greater than zero and a string of either 's' or 'p'
# output: an integer that is the sum or product of the input

# Things to Consider:
# - What if the input is empty
# - What if the user doesn't enter a number
# - What if the user enters a number less than or equal to zero
# - What if the user doesn't enter 's' or 'p'
# - What if the user enters 'S' or 'P' instead of lowercase

# Test Cases:
# input: 5, 's'
# output: 15
# input: 6, 'p'
# output: 720

# Algorithm:
# Ask the user to enter an integer greater than 0, save to a variable called num
# Ask the user to enter 's' for sum, or 'p' for product, save to a variable called operation
# Create an array called num_range from 1 to num
# Use an IF statement to determine the correct operation to perform (used case statement instead)
#   if 's' then use the reduce method on num_range and add all the numbers together
#   if 'p' then use the reduce method on num_range and multiply all the numbers together
#   save the results to a variable called results
# Print a string containing results

# -----------------------------

# Pseudo-Code

# START

# Given an integer greater than zero and a string containing 's' or 'p', determine the sum or product of a range from 1 to the input integer.

# GET num = integer greater than 0
# VALIDATE NUMBER

# GET operation = string of either 's' or 'p' # convert answer to lowercase

# SET num_range = (1..num).to_a
# SET valid_operation? = false

# LOOP
#   SET results = CASE operation
#                 WHEN 's'
#                   valid_operation? = true
#                   num_range.reduce { |sum, n| sum + n }
#                 WHEN 'p'
#                   valid_operation? = true
#                   num_range.reduce { |sum, n| sum * n }
#                 ELSE
#                   PRINT "=> Hmm... that doesn't look quite right."
#                   PRINT a prompt for either 's' or 'p'
#                   GET operation

#   BREAK LOOP if valid_operation?

# PRINT string with results
# END
