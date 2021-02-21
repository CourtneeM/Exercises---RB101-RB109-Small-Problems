# Update the method from the previous exercise to determine leap years both before and after 1752.
# Before 1752 leap years occur in any year that is evenly divisble by 4.

# input: an integer
# output: a Boolean value

# Test Cases:
# input: 2016
# output: true
# input: 2400
# output: true
# input: 1900
# output: false

# Algorithm:
# Bring in the leap_year? method from the previous exercise.
# Add a condition before the exisiting condition to check if year < 1752
#   If year < 1752 
#     return true if year % 4 == 0, otherwise return false
# Keep the orignal method below the new conditional

# Pseudo-Code:

# START

# # Given an integer, year, determine leaps years before and after 1752.

# IF year < 1752
#   IF year % 4 == 0 THEN return true OTHERWISE return false

# original leap_year? method here

# END

# -----------------------------------------------------------------------------

def leap_year?(year)
  if year < 1752
    year % 4 == 0 ? (return true) : (return false)
  end

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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
