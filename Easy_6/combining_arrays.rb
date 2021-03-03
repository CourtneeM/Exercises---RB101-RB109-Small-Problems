# input: two arrays
# output: an array that is the combination of the input arrays with no duplicates

# Rules
#  Explicit requirements
#  - return one array with no duplicates

# Test Cases
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Algorithm
# - create a new array called combined_arr and set equal to an array with both input arrays
# - push both input arrays to combined_arr
# - flatten combined arr and call the uniq method

def merge(arr1, arr2)
  combined_arr = [arr1, arr2]
  combined_arr.flatten.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
