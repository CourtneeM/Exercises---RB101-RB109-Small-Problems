def count_occurrences(vehicles)
  vehicle_count = Hash.new(0)

  vehicles.each { |vehicle| vehicle_count[vehicle] += 1 }

  puts vehicle_count
end

vehicles = %w[car truck car SUV truck motorcycle car motorcycle SUV car SUV truck]
count_occurrences(vehicles)

# tally method solves this problem easily

# Write a method that counts the number of occurrences of each element in a given array
# input: an array
# output: a hash
# things to consider:
#   words in the array are case sensitive

# Test Case:
# vehicles = [car, truck, car, SUV, truck, motorcycle, car, motorcycle, SUV, car, SUV, truck]
# car => 4
# truck => 3
# SUV => 3
# motorcycle => 2

# Algorithm
# Create a new hash called vehicle_count
# Iterate over the vehicles array, adding each item to the hash.
# Use the item in the array as the hash key, adding one for each occurrence as the value
# Return the vehicle_count hash

# -------------------------------------------------

# Pseudo-Code
# START
#   # Given an array of vehicle, count the number of occurrences for each vehicle

#   SET vehicle_count = new Hash with default value of 0
#   iterate over vehicles
#     SET vehicle_count[current interation] = vehicle_count[current iteration] + 1

#   vehicle_count
# END

