# Problem
#   - Given a year, determine how many Friday the 13ths that year has.

# Input: an integer
# Output: an integer

# Rules
#   Explicit requirements
#     - Assume the year is greater than 1752.

# Test Cases
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# Data Structures
#   - integer

# Algorithm
#   - Use Date.new(year, month, day).strftime("%A") to retrieve the day of the week

#   - Create a constant called MONTHS and set equal to 12.
#   - Create a constant called DAY and set equal to 13.
#   - Create a variable called count and set equal to 0.
#   - Create a variable called current_month and set equal to 1.
#   - Create a loop that repeats for MONTHS amount of times.
#     - Create a date object using the input integer, current_month, and DAY)
#       - Retrieve the day of the week from the date object
#         - Increment count by 1 if the day of the week is equal to Friday
#       - Increment current_month by 1
#   - Return count

require 'date'

MONTHS = 12
DAY = 13

def friday_13th(year)
  count = 0
  current_month = 0

  MONTHS.times do
    current_month += 1
    count += 1 if Date.new(year, current_month, DAY).strftime('%A') == 'Friday'
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
