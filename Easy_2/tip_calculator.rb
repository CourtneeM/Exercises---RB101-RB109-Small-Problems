def tip_calculator()
  puts "=> What is the bill?"
  bill_subtotal = gets.chomp

  puts "What is the tip percentage?"
  tip_percentage = gets.chomp

  total_tip = bill_subtotal.to_f * (tip_percentage.to_f * 0.01)
  total_bill = bill_subtotal.to_f + total_tip

  puts "The tip is $#{total_tip} \nThe total is $#{total_bill}"
end

tip_calculator

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# input: two integers
# output: two integers

# things to consider:

# Test Cases:
# tip_calculator(200, 15) => 'The tip is $30.0 \n The total is $230.0'
# tip_calculator(100, 5) => 'The tip is $5.0 \n The total is $105.0'
# tip_calculator(50, 30) => 'The tip is $15.0 \n The total is $65.0'

# Algorithm:
# Ask the user to input the bill amount and save to a variable called bill_subtotal
# Ask the user to input a tip percentage and save to a variable called tip_percentage
# Multiply bill_subtotal by tip_percentage and save to a variable called total_tip
# Add total_tip to bill_subtotal and save to a variable called total_bill
# Print a string with total_tip and total_bill

# ---------------------------------

# Pseudo-Code

# START

# Given two integers, bill amount and tip percentage, calculate the tip amount and total bill amount.

# GET bill_subtotal
# GET tip_percentage
# SET tip_total = bill_subtotal * tip_percentage
# SET total_bill = bill_subtotal + tip_total
# PRINT string with tip_total and total_bill

# END


# further exploration

# def tip_calculator()
#   puts "=> What is the bill?"
#   bill_subtotal = gets.chomp

#   puts "What is the tip percentage?"
#   tip_percentage = gets.chomp

#   total_tip = bill_subtotal.to_f * (tip_percentage.to_f * 0.01)
#   total_bill = bill_subtotal.to_f + total_tip

#   puts "The tip is $#{'%.2f' % total_tip} \nThe total is $#{'%.2f' % total_bill}"
# end

# tip_calculator
