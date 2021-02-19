# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# input: 6 integers
# output: string describing if the 6th number appears in the first 5 numbers

# Test Cases:
# input: 1, 2, 3, 4, 5, 6
# output: "The number 6 does not appear in [1, 2, 3, 4, 5]."
# input: 1, 2, 3, 5, 4, 1
# output: "The number 1 does appear in [1, 2, 3, 5, 4]."

# Algorithm:
# Create a new array called numbers.
# Ask the user for 6 numbers, asking for each one at a time. Push onto numbers array.
# Pop off the last number and save to a variable called num_to_check.
# Check if the numbers array contains num_to_check.
# If it does then return an affirmative string.
# If it does not then return a corresponding string.

# Pseudo-Code:
# START

# # Given 6 integers, check if the 6th integer appears in the first 5. 

# SET numbers = []
# GET first number and push to numbers
# GET second number and push to numbers
# GET third number and push to numbers
# GET fourth number and push to numbers
# GET fifth number and push to numbers
# GET sixth number and save to num_to_check

# IF numbers includes num_to_check
#   PRINT "number appears"
# ELSE
#   PRINT "number does not appear"
# END

# END

# -----------------------------------------------------------------------------
ORDINALS = { '1' => 'st', '2' => 'nd', '3' => 'rd', '4' => 'th', '5' => 'th' }.freeze
MAX_NUMS = 6

def set_numbers
  numbers = []
  count = 0
  while count < MAX_NUMS
    count += 1
    case count
    when (1..(MAX_NUMS - 1)) then puts "Enter the #{count}#{ORDINALS[count.to_s]} number:"
    when MAX_NUMS then puts "Enter the last number:"
    end
    numbers.push(gets.chomp.to_i)
  end
  numbers
end

def display_results(numbers, num_to_check)
  if numbers.include?(num_to_check)
    puts "The number #{num_to_check} appears in #{numbers}."
  else
    puts "The number #{num_to_check} does not appear in #{numbers}."
  end
end

def display_welcome_message
  puts 'Welcome to Searching 101.'
  puts '-------------------------'
end

numbers = set_numbers
num_to_check = numbers.pop

display_results(numbers, num_to_check)
