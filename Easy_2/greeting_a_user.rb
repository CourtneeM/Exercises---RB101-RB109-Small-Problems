puts "What is your name?"
name = gets.chomp
loop do
  break unless name.empty?

  puts "Hmm... that doesn't look quite right.\nWhat is your name?"
  name = gets.chomp
end

name.include?('!') ? puts("HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?") : puts("Hello #{name}.")

# Write a program that will ask for a user's name. The program will then greet the user. If the user writes 
# "#{name}!" then the computer yells back to the user.

# input: a string, name
# output: a string with the user's name

# Things to Consider:
# - What is the user does not enter a valid name

# Test Cases:
# input: 'Bob'
# output: 'Hello Bob.'
# input: 'Bob!'
# output: 'HELLO BOB. WHY ARE WE SCREAMING?'

# Algorithm:
# Ask the user for their name and save to a variabled called name
# Run name through an IF statement to see if name includes an exclamation point.
#   if there is an exclamation point, print a string in UPPERCASE.
#   if there is no exclamation point, print a regular greeting.

# --------------------------------

# Pseudo-Code

# START

# Given a string, name, greet the user. If the string contains an exclamation point, the greeting should be in uppercase.

# GET name
# IF name includes '!'
#   PRINT 'GREETING THAT YELLS AT USER'
# ELSE
#   PRINT 'Hello ' + name

# END
