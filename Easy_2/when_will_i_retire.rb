puts "Hello, how old are you?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_until_retirement = retirement_age - age
retirement_year = current_year + years_until_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_until_retirement} years of work to go!"

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# input: two integers, age and retirement age
# output: two strings with current year, retirement year, and years until retirement

# Things to Consider:
# - age validation

# Test Cases:
# input: age = 30, retirement_age = 70
# output: "It's 2021. You will retire in 2061.\nYou have only 40 years of work to go!"

# Algorithm:
# Ask the user for their age and save their answer to the age variable
# Ask the user what age they would like to retire age and save their answer to the retirement_age variable
# Create a variable called current_year and set equal to the current year
# Create a variable called years_until_retirement and set equal to retirement_age - age
# Create a variable called retirement_year and set equal to current_year + years_until_retirement
# Display a string with current_year and retirement_year
# Display a string with years_until_retirement

# ------------------------------------

# Pseudo-Code

# START

# Given two integers, age and retirement_age, calculate how many years until retirement and what year retirement is.

# GET age
# GET retirement_age

# SET current_year = current year
# SET years_until_retirement = retirement_age - age
# SET retirement_year = current_year + years_until_retirement

# PRINT current_year and retirement_year
# PRINT years_until_retirement

# END
