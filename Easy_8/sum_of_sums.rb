# input: an array
# output: an integer that is the sum of the sums of each leading subsequence for that array

# Rules
# - the array will always contain one number

# Test Cases
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# Algorithm
# - initialize an empty array called num_groups
# - iterate over the input array with index
#   - push input array[0, index + 1] to the num_groups array
# - initialize an empty array called sum_of_groups
# - iterate over num_groups
#   - add the numbers in each sub-array and push to sum_of_groups
# - calculate the sum of all the elements in sum_of_groups and return

def sum_of_sums(arr)
  sum_groups = []

  arr.each_with_index { |_, index| sum_groups << arr[0, index + 1].sum }

  sum_groups.sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
