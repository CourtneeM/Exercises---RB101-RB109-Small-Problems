# input: an integer
# output: an array

# Rules
#  Explicit requirements
#  - all of the lights start in the off position
#  - the first pass turns all of the lights to the on position
#  - the second pass turns the light numbers divisible by 2 to their opposite position
#  - the third pass turns the light numbers divisible by 3 to their opposite position
#  - the fourth pass turns the light numbers divisible by 4 to their opposite position
#  - so on so forth...
#  - return an array with the lights that are in the on position

# Test Cases
# lights_on(5) == [1, 4]
# lights_on(10) == [1, 4, 9]

# Problem
#  - Given an input integer, loop over an array equal to 1..n. The light switches start in the off position.
#    Each pass will flip the light switches to their opposite position.
#    The first pass will flip all switches to the on position.
#    The subsequent passes will flip the switches that are divisible by that pass number.

# Data Structure
# - A hash created from the input integer (1..n), all values will be false
# - The return value will be an array that consists of the true values from the hash

# Algorithm
# - create a hash with keys from 1..n, all values are false
# - create a variable called divisor and set equal to 1
# - create a times loop and loop for n amount of times
#   - iterate over the hash using map
#     - if the value is divisible by divisor, set it to the opposite Boolean
#   - increment the divisor

def lights_on(n)
  lights = (1..n).each_with_object({}) { |num, hash| hash[num] = false }
  divisor = 1

  n.times do
    if divisor == 1
      lights.each { |k, v| lights[k] = !v }
    else
      lights.each { |k, v| lights[k] = !v if (k % divisor).zero? }
    end
    divisor += 1
  end
  lights.select { |_k, v| v == true }.keys
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
p lights_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144,
                      169, 196, 225, 256, 289, 324, 361, 400, 441, 484,
                      529, 576, 625, 676, 729, 784, 841, 900, 961]
