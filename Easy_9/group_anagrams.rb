words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

ANAGRAM_WORDS = words.map { |word| word.split('').sort.join }.uniq

def anagram(words)
  anagrams = ANAGRAM_WORDS.map { |word| [word, []] }.to_h

  words.each do |word|
    sorted_word = word.split('').sort.join
    anagrams[sorted_word].push(word)
  end

  anagrams.values.each { |sub_arr| p sub_arr }
end

anagram(words)
