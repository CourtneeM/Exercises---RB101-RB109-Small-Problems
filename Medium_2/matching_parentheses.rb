# Problem
#   - Given a string, determine if the included parentheses are balanced.
#     Parentheses are balanced if they are properly opened and closed in pairs. ex. ((string))
#     Return true if the parentheses are balanced, false otherwise.

# Input: a string
# Output: a Boolean

# Rules
#   Explicit requirements
#     - Parentheses are balanced if they are in a matching pair.
#       - The matching pair must begin with an opening parentheses, (
#   Implicit requirements
#     - No parentheses will return true.

# Test Cases
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# Data Structure
#   - an array

# Algorithm
#   - Create an array called parentheses and set equal to the
#       parentheses from the input string.
#   - Create a loop
#     - Join parentheses together.
#     - Break the loop if there are no more '()' in the string.
#     - Split parentheses at '()'
#   - If parentheses is empty, return true.
#   - Otherwise return false.

require 'pry'

def balanced?(str)
  parentheses = str.chars.select { |char| char =~ /[()]/ }

  loop do
    parentheses = parentheses.join
    break unless parentheses.include?('()')

    parentheses = parentheses.split('()')
  end
  parentheses.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
