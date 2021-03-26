# Problem
#   - Given an array, sort the array using a bubble sort algorithm.

# Input: an array
# Output: an array

# Rules
#   Explicit requirements
#     - Each pass over the array will move elements around until they are all sorted least to greatest.
#       - The elements will be check from left to right, comparing two at a time.
#       - If the element on the left is greater than the element on the right, swap their places.
#       - Move to the next pair of elements and repeat the process.
#     - Once a pass is completed with no elements switching places, the bubble sort is finished.
#   Implicit requirements
#     - The array elements can be integers or strings.

# Questions
#   - Can the array elements be anything other than integers or strings?
#     - Assume no.

# Test Cases
# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Data Structure
#   - array

# Algorithm
#   - Create a loop
#     - Iterate over the input array with the final iteration being the next to last element.
#       - Check if the current element is greater than the next element
#       - If the current element is greater.
#         - Swap the current element and the next element.
#       - Continue to the next iteration and repeat the above.
#     - Repeat the above steps.
#     - Break from the loop when a full pass is made without any changes.
#   - Return the sorted array.

def bubble_sort!(arr)
  loop do
    round_start_arr = arr.dup

    arr.each_with_index do |el, index|
      break if index == arr.size - 1

      next_el = arr[index + 1]
      arr[index..(index + 1)] = next_el, el if el > arr[index + 1]
    end

    break if round_start_arr == arr
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w[Sue Pete Alice Tyler Rachel Kim Bonnie]
bubble_sort!(array)
p array == %w[Alice Bonnie Kim Pete Rachel Sue Tyler]
