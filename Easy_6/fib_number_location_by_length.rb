# input: an Integer
# output: an Ingeter that is the index of the first occurrance of the number of digits specified in the input

# Rules
#  Explicit requirements
#  - the index for the output begins at 1, not 0
#  - the input will always be an integer greater than or equal to 2

# Test Cases
# find_fibonacci_index_by_length(2) == 7
# find_fibonacci_index_by_length(3) == 12
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# Algorithm
# - create a basic fibonacci method
#   - the input integer will be the number of iterations
#   - initialize a variable called value and set equal to 1
#   - initialize an array called result and set equal to 1
#   - create a loop that will repeat for the input integer amount of times
#     - push value to the results array
#     - set value equal to the sum of the results array
#   - returns the results array

# Tips
# convert the number to string and use String#size to see how many digits
#   or use Integer#digits and Array#size

def find_fibonacci_index_by_length(stop_digits)
  value = 1
  results = [1]

  (1..nil).each do |index|
    results << value
    break index + 1 if value.digits.size == stop_digits

    value = results[-1] + results[-2]
  end
end

p find_fibonacci_index_by_length(2) #== 7
p find_fibonacci_index_by_length(3) #== 12
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847
