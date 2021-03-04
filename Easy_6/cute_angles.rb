# input: a float that represents an angle between 0 and 360
# output: a string that represents the input in degrees, minutes, and seconds

# Rules
#  Explicit requirements
#  - Use the degree symbol to represent degrees
#  - Use ' to represent minutes
#  - Use " to represent seconds
#  - Round your answers
#  - Minutes and seconds should be two digits with leading zeros
#  Implicit requirements
#  - The input will always be a number

# Test Cases
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Algorithm
# - create a method called get_degrees and extract the degrees from the left side of the input number decimal
# - create a method called get_minutes and get the numbers to the right of the input number multiplied by 60
# - create a method called get_seconds and get the numbers to the right of the decimal in the minutes parameter multiplied by 60
# - save the result of each of those to variables called degrees, minutes, and seconds respectively
#   - if degrees is not a float, then set minutes equal to 0
#   - if minutes is not a float, then set seconds equal to 0
# - output a string with the results and their respective symbol, formatting the minutes and seconds to have leading zeros for two digits total

# Tips
# - 1 degree = 60 minutes
# - 1 minute = 60 seconds

DEGREE = "\xC2\xB0"

def get_degrees(num)
  degrees = num.to_s.split('.')[0].to_i

  until degrees.between?(0, 360)
    degrees -= 360 if num > 360
    degrees += 360 if num.negative?
  end

  degrees
end

def get_minutes_or_seconds(num)
  decimal_numbers = num.to_s.split('.')[1].split.unshift('0.').join.to_f
  (decimal_numbers * 60)
end

def dms(num)
  degrees = get_degrees(num)
  minutes = num.class == Float ? get_minutes_or_seconds(num) : 0
  seconds = minutes.class == Float ? get_minutes_or_seconds(minutes) : 0

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
