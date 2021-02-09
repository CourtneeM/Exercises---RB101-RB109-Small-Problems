def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# inputs: a positive integer and a boolean
# output: an integer

# Things to consider

# Test Cases:
# calculate_bonus(2800, true) == 1400 => true
# calculate_bonus(1000, false) == 0 => true
# calculate_bonus(50000, true) == 25000 => true

# Algorithm:
# Check if the boolean is true or false
# If the boolean is true
#  divide the salary by 2 and return that amount
# If the boolean is false
#  return 0

# ------------------------------

# Pseudo-Code

# START

# Given a positive integer and a boolean, calculate a bonus that is half of the given salary if the boolean is true. If the boolean is false, the bonus should be 0.

# IF boolean is true
#   salary / 2
# ELSE
#   0

# END
