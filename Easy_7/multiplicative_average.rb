# input: an array of integers
# output: an integer that is the product of the input array elements, divided by the array size

# Rules
#  Explicit requirements
#  - multiply all the array integers together and divide by the size of the array
#  - round the result to 3 decimal places
#  - the method will print out the result along with a message
#  Implicit requirements
#  - if result is not 3 decimal places long, pad with 0s

# Test Cases
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Algorithm
# - initialize a variable called result and set equal to the product of the input array elements divided by the size of the input array 
# - use format to display 3 decimal places
# - return the result variable

def show_multiplicative_average(arr)
  result = (arr.reduce(&:*).to_f / arr.size).round(3)
  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
