# input: an array
# output: two arrays, nested, that contain the first half and second half of the original array, respectively

# Rules
#  Explicit requirements
#  - return two new arrays, nested in another array
#  - the two arrays will each contain half of the original array
#  - if the array is split unevenly, the first array will contain the additional element
#  Implicit requirements
#  - if the input array only contains one element, the first array will hold that element

# Test Cases
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# Algorithm
# - iterate through the input array using the partition method with index
#   - the block condition should be array.size / 2 >= index

# Tips
# - check out the partition method, array.size / 2 < index -- or something similar

def halvsies(arr)
  arr.partition.with_index { |_, index| (arr.size / 2.0).ceil > index }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
