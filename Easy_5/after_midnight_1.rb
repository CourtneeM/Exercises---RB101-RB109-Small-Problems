# input: integer
# output: a string representing time in a 24 hour format

# Rules
#  Explicit requirements
#   - input will be an integer
#   - output will be a string in hh:mm format
#   - if the number of minutes is positive, the time is after midnight
#   - if the number of minutes is negative, the time is before midnight
#   - Do not use Ruby's Date and Time classes
#   - Do not worry about Daylight Savings and other complications
#  Implicit requirements
#   - Do not use AM or PM since it is 24 hour format

# Test Cases
#  time_of_day(0) == "00:00"
#  time_of_day(-3) == "23:57"
#  time_of_day(35) == "00:35"
#  time_of_day(-1437) == "00:03"
#  time_of_day(3000) == "02:00"
#  time_of_day(800) == "13:20"
#  time_of_day(-4231) == "01:29"

# Algorithm
#  - initialize a variable called hours and set equal to 0
#  - initialize a variable called minutes and set equal to 0
#  - input integer / 60 if will equal the number of hours
#    - if input integer / 60 > 24, then divide that number by 24 to get the hours
#  - input integer % 60 will equal the number of minutes

# def time_of_day(int)
#   hours = loop do
#             temp_hours = int.abs
#             break 23 if int.negative? && temp_hours < 60
#             break 0 if temp_hours < 60

#             loop do
#               temp_hours /= 60 if temp_hours > 60
#               temp_hours /= 24 if temp_hours <= 60 && temp_hours >= 24
#               temp_hours /= 24 if int.negative? && (temp_hours < 24 && temp_hours > 12)
#               break if temp_hours < 24
#             end
#             break temp_hours
#           end
#   minutes = int % 60

#   "#{format('%02d', hours)}:#{format('%02d', minutes)}"
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  p delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) # == "00:00"
p time_of_day(-3) # == "23:57"
p time_of_day(35) # == "00:35"
p time_of_day(-1437) # == "00:03"
p time_of_day(3000) # == "02:00"
p time_of_day(800) # == "13:20"
p time_of_day(-4231) # == "01:29"
