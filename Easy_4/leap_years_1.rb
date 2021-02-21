# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.
# Return true if the year is evenly divisible by 4, unless the year is also divisible by 100.
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400

# input: an integer greater than zero
# output: a Boolean value

# Test Cases:
# input: 2016
# output: true
# input: 2400
# output: true
# input: 1
# output: false

# Algorithm:
# Check if the year % 4 is equal to zero.
# If year % 4 is equal to zero
#   If year % 100 is equal to zero
#     Then it is not a leap year unless the year % 400 is equal to zero
#   If year % 100 is not equal to zero
#     Then it is a leap year

# Pseudo-Code:

# START

# # Given an integer, year, determine if it is a leap year.

# IF year % 4 == 0
#   IF year % 100 == 0
#     RETURN false UNLESS year % 400 == 0
#   ELSE
#     RETURN true

# END

# Could also do a case statement instead of if/else

# -----------------------------------------------------------------------------

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      return false unless year % 400 == 0
    end
    return true
  end
  false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
