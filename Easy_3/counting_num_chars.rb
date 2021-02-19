# Write a program that will ask the user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# input: a string
# output: integer that is the number of characters in the string

# Test Cases:
# input: "walk"
# output: "There are 4 characters in "walk"."
# input: "walk, don't run"
# output: "There are 13 characters in "walk, don't run"."

# Algorithm:
# Ask for a string and save to a variable named str
# Split the string at the spaces and join back together to remove any spaces.
# Display the size of the split and joined str, along with what the original string contained

# Pseudo-Code:

# START

# # Given a string, display the number of characters not including spaces.

# GET string

# PRINT message with string.split(" ").join.size and original string contents.

# END

# -----------------------------------------------------------------------------

print 'Please write word or multiple words: '
str = gets.chomp

puts "There are #{str.split.join.size} characters in \"#{str}\"."
