# input: two arrays
# output: an array where each element is the result of multiplying each element in the first array by each element in the second array

# Rules
#  Explicit requirements
#  - neither array will be empty

# Test Cases
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Algorithm
# - initialize an empty array and name it results
# - iterate over the first input array
#   - iterate over the second input array
#     - multiply the current element from array1 by the current element from array2 and push to results
# - sort the results array from least to greatest value
# - return the results array

def multiply_all_pairs(arr1, arr2)
  results = []

  arr1.each do |arr1_el|
    arr2.each do |arr2_el|
      results << arr1_el * arr2_el
    end
  end

  results.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
