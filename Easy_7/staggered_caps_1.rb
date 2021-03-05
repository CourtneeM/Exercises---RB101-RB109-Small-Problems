# input: a string
# output: a new string in SpOnGeBoB case, alternating caps

# Rules
#  Explicit requirements
#  - beginning with uppercase, alternate the case of each character
#  - ignore non-letter characters when converting case, but count as characters for alternating count
#  Implicit requirements
#  - assume input is always a string

# Test Cases
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Algorithm
# - split the input string and map over each character with index
#   - if index is even
#     - convert the current character to uppercase
#   - if index is odd
#     - convert the current character to lowercase
# - join the return value of map

# Tips
# - index.even? char.upcase, index.odd? char.downcase

# def staggered_case(str)
#   spongebob_case = str.split('').map.with_index do |char, index|
#     if index.even?
#       char.upcase
#     elsif index.odd?
#       char.downcase
#     else
#       char
#     end
#   end.join

#   spongebob_case
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploraton
# reverse spongebob case

def staggered_case(str)
  spongebob_case = str.split('').map.with_index do |char, index|
    if index.odd?
      char.upcase
    elsif index.even?
      char.downcase
    else
      char
    end
  end.join

  spongebob_case
end

p staggered_case('I Love Launch School!') == 'i lOvE LaUnCh sChOoL!'
p staggered_case('ALL_CAPS') == 'aLl_cApS'
p staggered_case('ignore 77 the 444 numbers') == 'iGnOrE 77 tHe 444 nUmBeRs'
