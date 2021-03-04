# input: an array and a search value
# output: a Boolean for true/false if the search value is found in the input array

# Rules
#  Explicit requirements
#  - do not use Array#include?
#  - return true if the search value is in the input array
#  - return false if the search value is not in the input array

# Test Cases
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# Algorithm
# - iterate over the input array using the select method
#   - check if the current element is equal to the search value
# - if the returned value from the method call is not empty, then return true
# - if the returned value from the method call is empty, then return false

# Tips
# - use select on the input array, if select is not empty then return true

def include?(arr, search_value)
  results = arr.select { |el| el == search_value }
  results.empty? ? false : true
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
