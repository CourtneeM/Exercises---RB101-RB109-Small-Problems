# input: an integer
# output: an integer

# Rules
#  Explicit requirements
#  - a double number is a number that has an even number of digits, and the left and right side of the number match, ex: 344344
#  - if the number is not a double number, return double the value
#  - if the number is a double number, return the number

# Test Cases
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# Algorithm
# - convert the input number to a string
# - initialize a variable called middle_position and set equal to input number length / 2
# - if the input number's length is even AND input number[0, middle_position] == input number[middle_positon..-1]
#   - return the input number
# - otherwise double the number and return

def twice(num)
  num = num.to_s
  middle_position = num.size / 2
  if num.size.even? && num[0, middle_position] == num[middle_position..-1]
    num.to_i
  else
    num.to_i * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
