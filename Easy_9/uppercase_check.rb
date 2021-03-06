UPPERCASE_LETTERS = ('A'..'Z').to_a

def uppercase?(str)
  str.chars.each do |char|
    if char.match(/[a-zA-Z]/)
      return false unless UPPERCASE_LETTERS.include?(char)
    end
  end
  true

  # string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
