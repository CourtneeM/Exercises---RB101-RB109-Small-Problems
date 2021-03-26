# Problem
#   - Given three integers that represent the angles of a traingle, determine if the
#     triangle is a right, acute, obtuse, or invalid.

# Input: three integers
# Output: a symbol

# Rules
#   Explicit requirements
#     - A right triangle is one that has one angle equaling 90 degrees.
#     - An acute triangle is one that has all three angles less than 90 degrees.
#     - An obtuse triangle is one that has one angle greater than 90 degrees.
#     - A valid triangle's angles will total 180 degrees and all angles are greater than 0.
#     - Return the triangle's type as a symbol.

# Test Cases
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# Data Structure
#   - an array

# Algorithm
#   - Define a constant called RIGHT_ANGLE and set equal to 90
#   - Define a constant called TOTAL_DEGREES = 180
#   - Define invalid requirements
#     - Return :invalid if any of the input integers equal 0 or the sum of the integers is not TOTAL_DEGREES
#   - Define right requirements
#     - Return :right if one of the input integers equals RIGHT_ANGLE
#   - Define acute requirements
#     - Return :acute if all three input integers are less than RIGHT_ANGLE
#   - Define obtuse requirements
#     - Return :obtuse if one angle is greater than RIGHT_ANGLE

RIGHT_ANGLE = 90
TOTAL_DEGREES = 180

def invalid?(a, b, c)
  [a, b, c].include?(0) || [a, b, c].sum != TOTAL_DEGREES
end

def right?(a, b, c)
  [a, b, c].include?(RIGHT_ANGLE)
end

def acute?(a, b, c)
  [a, b, c].all? { |angle| angle < 90 }
end

def obtuse?(a, b, c)
  [a, b, c].any? { |angle| angle > RIGHT_ANGLE }
end

def triangle(a, b, c)
  if invalid?(a, b, c)
    :invalid
  elsif right?(a, b, c)
    :right
  elsif acute?(a, b, c)
    :acute
  elsif obtuse?(a, b, c)
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
