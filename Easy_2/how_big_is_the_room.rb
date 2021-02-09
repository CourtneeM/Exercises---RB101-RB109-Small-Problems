puts "=> What is the length of the room?"
length = gets.chomp

puts "=> What is the width of the room?"
width = gets.chomp

area = length.to_f * width.to_f
square_feet = area * 10.7639

puts "The area of the room is #{area.round(2)} square meters (#{square_feet.round(2)} square feet)"

# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# input: two integers
# output: a string

# things to consider:
# - Did the user input numbers? - assume yes
# - Will the result contain decimals?
# - How many decimal places should be recorded?

# Test Cases:
# room_size(10, 7) => 'The area of the room is 70.0 square meters (753.47 square feet)
# room_size(6, 3) => 'The area of the room is 18.0 square meters (193.75 square feet)
# room_size(20, 5) => 'The area of the room is 100.0 square meters (1076.39 square feet)

# Algorithm:
# Ask the user for the length of the room and save to a variable called length
# Ask the user for the width of the room and save to a variable called width
# Multiply the length and width variables together and save to a variable called area
# Multiply the area by 10.7639 and save to a variable called square_feet
# Print the results to the user in a string

# --------------------------------

# Pseudo-Code

# START

# Given two integers, a length and a width, calculate square meters and the square feet.

# SET length = GET length of the room
# SET width = GET width of the room
# SET area = length * width
# SET square_feet = area * 10.7639

# PRINT string with area and square feet

# END


# further exploration

# SQFEET_TO_SQINCHES = 144
# SQFEET_TO_SQCENTIMETERS = 929.03

# puts "=> What is the length of the room in feet?"
# length = gets.chomp

# puts "=> What is the width of the room in feet?"
# width = gets.chomp

# area = length.to_f * width.to_f
# square_inches = area * SQFEET_TO_SQINCHES
# square_centimeters = area * SQFEET_TO_SQCENTIMETERS

# puts "The area of the room is #{area.round(2)} square feet (#{square_inches.round(2)} square inches, #{square_centimeters.round(2)} square centimeters)"
