# input: a string
# output: a new string that doubles each consonant character. all other characters are not altered

# Rules
#  Explicit requirements
#  - return a new string
#  - double consonant characters
#  - punctuation, digits, whitespace, etc should not be doubled
#  Implicit requirements
#  - an empty string will return an empty string

# Test Cases
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# Tips
# - explicitly define vowel values

VOWELS = %W(a e i o u)
CONSONANTS = ('a'..'z').reject { |letter| VOWELS.include?(letter) }

def double_consonants(str)
  str.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? char * 2 : char
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
