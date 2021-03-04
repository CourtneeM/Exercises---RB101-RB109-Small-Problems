# input: an array
# output: an integer that represents the value in the array that occurs twice

# Rules
#  Explicit requirements
#  - return an integer that represents the duplicate value in the array
#  - one value will always occur twice
#  Implicit requirements
#  - the input will be an array

# Test Cases
# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# Algorithm
# - iterate through the input array with a hash object with the default value of zero
#   - set the hash key to be the current element value and the value to increment by 1
# - check the hash for the key that has a value of 2 and return that key

# Tips
# - use a hash to keep track of occurances, return the number that occurs twice

def find_dup(arr)
  occurances = arr.each_with_object(Hash.new(0)) { |el, hsh| hsh[el] += 1 }
  duplicate = occurances.select { |_, value| value == 2 }
  duplicate.key(2)
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18, 9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81, 8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84, 1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98, 3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
