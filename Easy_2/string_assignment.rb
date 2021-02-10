name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# It will display => BOB, BOB

# This is because calling name.upcase! mutates the value the name variable is pointing at, which save_name is also pointing at.
# If the name variable was outright reassigned, save_name would not be affected. But because it was mutated, save_name is affected.
