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

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(total_elapsed_minutes)
  elapsed_minutes_day = total_elapsed_minutes % MINUTES_PER_DAY
  hours, minutes = elapsed_minutes_day.divmod(MINUTES_PER_HOUR)
  "#{format('%.2d', hours)}:#{format('%.2d', minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
