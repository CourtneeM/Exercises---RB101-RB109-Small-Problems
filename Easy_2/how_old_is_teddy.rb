def teddy_age()
  age = (20..200).to_a.sample # or rand(20..200)
  puts "Teddy is #{age} years old!"
end

teddy_age()

# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# input: none
# output: a string

# things to consider:
# - Are 20 and 200 included? - assume yes

# Test Cases:
# teddy_age() => 'Teddy is 38 years old today!'
# teddy_age() => 'Teddy is 83 years old today!'
# teddy_age() => 'Teddy is 189 years old today!'
# teddy_age() => 'Teddy is 26 years old today!'

# Algorithm:
# Create a new variable called age and set it equal to a random number between 20 and 200.
# Insert the age variable into a string stating Teddy's age and return the string

# -----------------------------

# Pseudo-Code

# START

# Generate a random number between 20 and 200 and insert it into a string.

# SET age = random number between 20 and 200
# return 'Teddy is ' + age + ' years old!'

# END


# further exploration

# def teddy_age()
#   puts "=> What is your name?"
#   name = gets.chomp

#   name = 'Teddy' if name.empty?
#   age = (20..200).to_a.sample # or rand(20..200)
#   puts "#{name} is #{age} years old!"
# end

# teddy_age()
