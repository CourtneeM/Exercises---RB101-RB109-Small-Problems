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

# MONTHS = 12
# DAY = 13

# def friday_13th(year)
#   count = 0
#   current_month = 0

#   MONTHS.times do
#     current_month += 1
#     count += 1 if Date.new(year, current_month, DAY).strftime('%A') == 'Friday'
#   end
#   count
# end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

# Further Exploration
# Count the number of months that have 5 Fridays.

# Algorithm
#   leap_year?(year)
#   - Check if the input year is a leap year.
#
#   five_fridays(year)
#   - Create a hash called months_and_days.
#     - Set the keys to all of the months by their numerical representation.
#     - Set the values to their respective amount of days.
#     - If it is a leap year:
#       - Change February to 29 days.
#   - Create a variable called month_count and set equal to 1.
#   - Create a loop that repeats for the length of the months_and_days hash.
#     - Create a variable called friday_count and set equal to 1.
#     - For the current key-value pair, create a loop that repeats for the amount of days in that month.
#       - Using Date.new(year, current_month, day).strftime('%A'), check if it is a Friday.
#         - Increment friday_count for every friday in the month.
#       - If friday_count >= 5, increment month_count by 1.

def leap_year?(year)
  return false unless (year % 4).zero?

  if (year % 100).zero?
    return false unless (year % 400).zero?
  end

  true
end

def five_fridays(year)
  months_and_days = { 1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30,
                      7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31 }
  months_and_days[2] = 29 if leap_year?(year)
  month_count = 0

  months_and_days.each do |month, day|
    friday_count = 0
    1.upto(day) { |n| friday_count += 1 if Date.new(year, month, n).strftime('%A') == 'Friday' }
    month_count += 1 if friday_count >= 5
  end
  month_count
end

p five_fridays(2015) == 4
p five_fridays(1986) == 4
p five_fridays(2019) == 4
p five_fridays(2004) == 5
