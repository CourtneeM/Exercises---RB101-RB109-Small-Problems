# input: a string representing the time of day in 24 hour format, '00:00'
# output: an integer representing the amount of minutes before or after midnight, depending on the method

# Rules
#  Explicit requirements
#   - the input will be a string in 24 hour time format
#   - the output will be a positive integer in the range of 0..1439
#  Implicit requirements
#   - '24:00' will return the same as '00:00'  => 0

# Test Cases
#  after_midnight('00:00') == 0
#  before_midnight('00:00') == 0
#  after_midnight('12:34') == 754
#  before_midnight('12:34') == 686
#  after_midnight('24:00') == 0
#  before_midnight('24:00') == 0

# Algorithm
#  - initialize constants MINUTES_PER_HOUR = 60, HOURS_PER_DAY = 24, MINUTES_PER_DAY
#  - extract the hours and minutes from the input string
#  - initialize a variable called elapsed_minutes and set equal to (hours * MINUTES_PER_HOUR) + minutes
#  FOR AFTER_MIDNIGHT
#  - if elapsed_minutes is between 0..1439
#    - return elapsed_minutes
#    - otherwise return elapsed_minutes - MINUTES_PER_DAY
#  FOR BEFORE_MIDNIGHT
#  - elapsed_minutes = MINUTES_PER_DAY - elapsed_minutes
#  - if elapsed_minutes is between 0..1439
#    - return elapsed_minutes
#    - otherwise return elapsed_minutes - MINUTES_PER_DAY

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  elapsed_minutes = (hours * MINUTES_PER_HOUR) + minutes

  elapsed_minutes.between?(0, 1439) ? elapsed_minutes : elapsed_minutes - MINUTES_PER_DAY
end

def before_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  elapsed_minutes = (hours * MINUTES_PER_HOUR) + minutes
  elapsed_minutes = MINUTES_PER_DAY - elapsed_minutes

  elapsed_minutes.between?(0, 1439) ? elapsed_minutes : elapsed_minutes - MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
