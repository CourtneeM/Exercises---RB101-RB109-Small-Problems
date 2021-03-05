# input: a string
# output: a string that alternates case, starting with uppercase and ignores non-letters when counting characters

# Rules
#  Explicit requirements
#  - modify the previous exercise's method to ignore character count when the current character is not a letter

# Test Cases
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Algorithm
# - initialize a variable called next_uppercase and set equal to true
# - split the input string and map over each character
#   - if the current character is not a letter
#     - skip to next iteration
#   - if next_uppercase is true
#     - set next_uppercase to false
#     - convert the current character to uppercase
#   - if next_uppercase is false
#     - set next_uppercase to true
#     - convert the current character to lowercase
# - join the return value of the iteration

def staggered_case(str)
  next_uppercase = true

  str.chars.map do |char|
    next char unless char.match(/[a-zA-Z]/)

    if next_uppercase
      next_uppercase = false
      char.upcase
    elsif !next_uppercase
      next_uppercase = true
      char.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
