# input: two arrays
# output: an array that multiplies elements from the input arrays whose index's match

# Rules
#  Explicit requirements
#  - the input arrays will contain a list of numbers
#  - the input arrays will have the same number of elements

# Test Cases
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Algorithm
# - initialize an empty array named results
# - initialize an variable called counter and set equal to 0
# - create a times loop and repeat for arr1 size amount of times
#   - multiply arr1[counter] and arr2[counter], push to results
#   - increment counter by 1
# - return results

# def multiply_list(arr1, arr2)
#   results = []
#   counter = 0

#   arr1.size.times do
#     results << arr1[counter] * arr2[counter]
#     counter += 1
#   end

#   results
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |num1, num2| num1 * num2 }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
