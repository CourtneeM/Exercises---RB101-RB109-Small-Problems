# input: an array
# output: the input array reversed

# Rules
#  Explicit requirements
#  - return the original object, mutated
#  - do not use built in reverse methods
#  - do not reverse the array element values, just the array elements
#  Implicit requirements
#  - if the input is empty, return an empty array

# Test Cases
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# list = []
# reverse!(list) == [] # true
# list == [] # true

# Algorithm
# - create a variable called count and set equal to zero
# - create a times loop that uses the input array's size as the amount of times to loop
#   - remove the last element from the array and insert it into the current index's position
#   - increment count by 1
# - return the original array

# Tips
# - use the object_id method to check if the output is the same object as the input

def reverse!(list)
  count = 0

  list.size.times do
    list.insert(count, list.pop)
    count += 1
  end

  list
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true
