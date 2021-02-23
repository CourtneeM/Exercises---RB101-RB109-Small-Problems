# Write a method that takes an array of numbers, and returns an array with the same number of elements, and each element has the running total from the original array.

# input: an array
# output: an array

# Test Cases:
# input: [2, 5, 13]
# output: [2, 7, 20]
# input: [14, 11, 7, 15, 20]
# output: [14, 25, 32, 47, 67]

# Algorithm:
# Define a variable called total and set equal to 0.
# Define a variable called running_total and set equal to an empty array.
# Iterate over the parameter array
#   Set total equal to total + the current item
#   Push total onto running_total
# Return running_total

# Pseudo-Code:

# START

# # Given an array, return an array that has each element as a running total of the original array.

# SET total = 0
# SET running_total = 0

# ITERATE parameter array
#   total += item
#   running_total.push(total)

# RETURN running_total

# END

# -----------------------------------------------------------------------------

def running_total(array)
  total = 0
  running_total = []

  array.each do |item|
    total += item
    running_total.push(total)
  end

  running_total
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Further Exploration

# def running_total(array)
#   total = 0

#   array.each_with_object([]) { |item, a| a.push(total += item) }
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []
