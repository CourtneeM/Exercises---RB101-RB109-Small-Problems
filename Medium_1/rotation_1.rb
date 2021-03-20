# input: an array
# output: an array

# Rules
#  Explicit requirements
#  - do not modify the original array
#  - move the first element of the input array to the end of the input array
#  - do not use the method Array#rotate or Array#rotate!
#  Implicit requirements
#  - all other elements will move up one position in the array (subtract 1)
#  - an array with one element will remain the same

# Test Cases
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# Problem
# Write a method that takes the element in the first position of an array and
# moves it to the end of the array, without modifying the original array.

# Data Structure
# an array - use dup to make a copy of the array, then modify

# Algorithm
# create a new array called array_copy and set it equal to the input array Array#dup
# Array#shift on array_copy and set equal to rotated_element
# Array#push rotated_element on array_copy
# return array_copy

def rotate_array(arr)
  arr_copy = arr.dup
  rotated_element = arr_copy.shift
  arr_copy.push(rotated_element)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
