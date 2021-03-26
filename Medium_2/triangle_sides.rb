# Problem
#   - Given three integers, determine if the integers equal an equilateral, isosceles,
#     or scalene triangle, and return their name as a symbol.

# Input: three integers
# Output: a symbol

# Rules
#   Explicit requirements
#     - An equilateral triangle will have all 3 sides equal length.
#     - An isosceles triangle will have 2 equal length sides, and the 3rd side a different length.
#     - A scalene triangle will have different lengths for all 3 sides.
#     - For isosceles and scalene:
#       - The sum of the lengths for the shorter two sides must be greater than the length of the longest side.
#     - For all triangles:
#       - All sides must have lengths greater than 0.

# Test Cases
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# Data Structure
#   - an array ## may revisit

# Algorithm
#   - Using the input integers:
#     - Check if all 3 input integers are equal in length.
#       - Use equilateral?
#         - Return :equilateral if this is true.
#     - Check if 2 of the input integers are equal and the 3rd is different,
#       AND that the total of the two shortest length side's is greater than the length of the final side.
#       - Use isosceles?
#         - Return :isosceles if this is true.
#     - A scalene triangle has different lengths for all sides.
#       - Check if the input integers are all different,
#         AND the 2 shorter sides total greater than the length of the longer side.
#         - Use scalene?
#           - Return :scalene if this is true.
#     - Return :invalid for all other inputs.

def equilateral?(a, b, c)
  a == b && b == c
end

def isosceles?(a, b, c)
  sorted_lengths = [a, b, c].sort
  [a, b, c].uniq.length == 2 && sorted_lengths[0..1].sum > sorted_lengths[2]
end

def scalene?(a, b, c)
  sorted_lengths = [a, b, c].sort
  [a, b, c].uniq.length == 3 && (sorted_lengths[0..1].sum > sorted_lengths[2])
end

def triangle(a, b, c)
  unless [a, b, c].include?(0)
    return :equilateral if equilateral?(a, b, c)
    return :isosceles if isosceles?(a, b, c)
    return :scalene if scalene?(a, b, c)
  end

  :invalid
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
