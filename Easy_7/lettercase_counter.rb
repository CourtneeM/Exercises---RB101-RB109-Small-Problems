# input: a string
# output: a hash that keeps count of the input string's lowercase, uppercase, or neither characters

# Rules
#  Explicit requirements
#  - input will be a string
#  - output will be a hash
#  - the hash will have 3 keys, lowercase, uppercase, neither
#  Implicit requirements
#  - the starting value for each hash value will be 0
#  - an empty string will return 0 for each hash value

# Test Cases
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Algorithm
# - create a new hash and set equal to { lowercase: 0, uppercase: 0, neither: 0 }
# - split the string and iterate over each character
#   - if current character converted to lowercase == current character
#     - hash[:lowercase] += 1
#   - if current character converted to uppercase == current character
#     - hash[:uppercase] += 1
#   - if current character converted to integer and back to string == current character
#     - hash[:neither] += 1
# - return the hash

def letter_case_count(str)
  case_count = { lowercase: 0, uppercase: 0, neither: 0}

  str.chars do |char|
    if !char.match(/[a-zA-z]/)
      case_count[:neither] += 1
    elsif char.match(/[a-z]/)
      case_count[:lowercase] += 1
    elsif char.match(/[A-Z]/)
      case_count[:uppercase] += 1
    end
  end

  case_count
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }
