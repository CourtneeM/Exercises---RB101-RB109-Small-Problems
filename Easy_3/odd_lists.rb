# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# input: an array
# output: an array that contains the elements in the odd placed items of the input array

# Test Cases:
# input: [2, 3, 4, 5, 6]
# output: [2, 4, 6]
# input: [1, 2, 3, 4, 5, 6]
# output: [1, 3, 5]

# Algorithm:
# Create a new array called oddity_array
# Iterate through the starting array
#   If the item has an even index, push it onto oddity_array
#   Else skip to the next item
# Return oddity_array

# Pseudo-Code:

# START

# # Given an array, return an array containing every other element, starting with the first.

# SET oddity_array
# ITERATE starting_array
#   IF index.even?
#     oddity_array.push(item)

# RETURN oddity_array

# END

# -----------------------------------------------------------------------------

def oddities(array)
  oddity_array = []

  array.each_with_index { |item, index| oddity_array.push(item) if index.even? }
  oddity_array

  # Or can just do array.select_with_index... and return the result using the same block.
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

def opposite_oddities(array)
  array.select.with_index { |_, index| index.odd? } # || index % 2 != 0
end

p opposite_oddities([2, 3, 4, 5, 6]) == [3, 5]
p opposite_oddities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p opposite_oddities(['abc', 'def']) == ['def']
p opposite_oddities([123]) == []
p opposite_oddities([]) == []
