# input: an array and a hash
# output: a string containing the input array and hash that greets the user

# Rules
#  Explicit requirements
#  - the input array will contain 2 or more elements that represents a person's name
#  - the input hash will contain a title and occupation
#  - the output greeting will join the name together, and state their title and occupation

# Test Cases
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# Algorithm
# - initialize a variable called name and set it equal to the input array joined by a whitespace
# - return a string that includes the name variable, along with the input hash title and occupation

def greetings(arr, hsh)
  name = arr.join(' ')
  title, occupation = hsh.values_at(:title, :occupation)
  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
