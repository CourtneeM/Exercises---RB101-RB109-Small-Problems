def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# the returned string will be a different object from the passed in string due to the string being split into an array

# if an array were passed in and iterated over, with each element having Array#reverse! called on it, the original array would be mutated and returned
