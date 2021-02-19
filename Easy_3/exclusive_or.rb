# Write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Only 1 argument can be truthy, return false if both are true or false.

# input: two arguments
# output: a Boolean value

# Test Cases:
# input: 5.even?, 4.even?
# output: true
# input: 5.odd?, 4.odd?
# output: true

# Algorithm:
# Write an if statement that first checks if both arguments are true or false.
#   If so, return false.
# Write an else clause that checks if one of the arguments is true.
#   If so, return true

# Pseudo-Code:

# START

# # Given two arguments, return true if only ONE of the arguments has a truthy value, otherwise return false.

# IF (arg1 && arg2) || (!arg1 && !arg2)
#   false
# ELSIF arg1 || arg2
#   true

# END

# -----------------------------------------------------------------------------

def xor?(arg1, arg2)
  if (arg1 && arg2) || (!arg1 && !arg2)
    false
  elsif arg1 || arg2
    true
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
