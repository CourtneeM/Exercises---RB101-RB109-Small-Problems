# input: an integer
# output: an integer

# Rules
#  Explicit requirements
#  - rotate the leftmost digit, then lock it in place, rotate the next leftmost digit then lock it in place
#      repeat until you reach the end of the integer
#  Implicit requirements
#  - leading zeros get dropped

# Test Cases
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# Problem
# - Take an integer and move the digit at index 0 to the end of the integer
#    Take the integer and move the digit at index 1 to the end of the integer
#    Repeat for the remaining digits

# Data Structure
# - Take the input integer and split it so that each digit is an array element
# - After the rotation is complete, turn the array into an integer

# Algorithm
# - Use the rotate_rightmost_digits from the previous exercise
# - n should be equal to the input array length
# - after each iteration, subtract 1 from n
# - need to modify the iterated array
#   - save the return value of each iteration to the iterated array

def rotate_array(arr)
  arr_copy = arr.dup
  rotated_element = arr_copy.shift
  arr_copy.push(rotated_element)
end

def rotate_rightmost_digits(nums, n)
  digits = nums.digits.reverse
  digits[-n, n] = rotate_array(digits[-n, n])
  digits.join.to_i
end

def max_rotation(nums)
  n = nums.digits.length
  digits = nums.digits.reverse.join.to_i

  n.times do
    digits = rotate_rightmost_digits(digits, n)
    n -= 1
  end
  digits
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
