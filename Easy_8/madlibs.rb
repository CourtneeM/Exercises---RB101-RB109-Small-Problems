# input: multiple strings that represent a noun, verb, adjective, and adverb
# output: a string that contains the input strings in a sentence

def ask_for_words
  puts 'Enter a noun:'
  noun = gets.chomp
  puts 'Enter a verb:'
  verb = gets.chomp
  puts 'Enter an adjective:'
  adjective = gets.chomp
  puts 'Enter an adverb:'
  adverb = gets.chomp

  words = { noun: noun, verb: verb, adjective: adjective, adverb: adverb }
  words
end

def madlibs(words)
  noun, verb, adjective, adverb = words.values_at(:noun, :verb, :adjective, :adverb)

  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's great!"
end

words = ask_for_words

madlibs(words)
