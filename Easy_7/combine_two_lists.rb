# input: two arrays
# output: an array that combines and alternates the elements from the input arrays

# Rules
#  Explicit requirements
#  - both input arrays will never be empty
#  - both input arrays will always contain the same number of elements
#  - one array will be returned

# Test Cases
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Algorithm
# - initialize an empty array called alternating
# - initialize a variable called counter and set equal to zero
# - create a times loop that will repeat for arr1.size times
#   - push arr1[counter] to the alternating array
#   - push arr2[counter] to the alternating array
#   - increment counter by 1
# - return the alternating array

# def interleave(arr1, arr2)
#   alternating = []
#   counter = 0

#   arr1.size.times do
#     alternating << arr1[counter]
#     alternating << arr2[counter]
#     counter += 1
#   end

#   alternating
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Further Exploration

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
