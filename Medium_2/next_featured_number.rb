# Problem
#   - Given a single integer, return the next featured number that is greater than the input number.
#     If there is no next featured number, return an error message.

# Input: an integer
# Output: an integer or a string (error message)

# Rules
#   Explicit requirements
#     - A featured number is an odd number that is divisible by 7,
#       and whose digits occur exactly once each.
#     - Return a featured number that is greater than the input number.
#     - Return an error message if no such number exists.

# Test Cases
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987
# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# Data Structure
#   - an integer

# Algorithm
#   - Create a constant called DIVISOR and set equal to 7.
#   - Create a loop that breaks when the featured number is found
#     - Check if the current number is divisible by DIVISOR and equals 0
#       - True if no digit is repeated and number is odd
#     - Increment multiple by 1
#   Return featured_number

DIVISOR = 7

def featured(num)
  increment_multiplier = 1
  maybe_featured = nil
  loop do
    maybe_featured = DIVISOR * (num.divmod(DIVISOR)[0] + increment_multiplier)
    no_repeats = maybe_featured.digits.uniq.size == maybe_featured.digits.size
    return maybe_featured if maybe_featured.odd? && (maybe_featured % DIVISOR).zero? && no_repeats

    increment_multiplier += 1
    break if maybe_featured >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
