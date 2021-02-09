def repeat_yourself(string, num)
  num.times { puts string }
end

repeat_yourself('leedle', 3)

# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# inputs: string, positive integer
# outputs: the string for as many times the positive integer is

# Things to consider:
#   What if the user does not enter a string
#   What if the user does not enter an integer
#   What if the user does not enter a positive integer

# ----------------------------------------------------

# Pseudo-Code - two versions

# START
# Given a string and a positive integer

# integer.times
#  PRINT string

# END

# START
# Given a string and a positive integer

# SET count = 0

# WHILE count < integer
#   PRINT string

#   count = count + 1

# END



=begin

# EXTRA - includes user input

def repeat_yourself(string, num)
  num.to_i.times { puts string }
end

puts "=> Hello, please enter a word or sentence."

string = gets.chomp
loop do
  break unless string.empty?

  puts "=> Invalid input. Please enter a word or sentence."
  string = gets.chomp
end

puts "=> How many times would you like that to be displayed?"
num = gets.chomp
loop do
  break unless num.to_i <= 0

  puts "=> Invalid input. Please enter a positive number."
  num = gets.chomp
end

repeat_yourself(string, num)

=end
