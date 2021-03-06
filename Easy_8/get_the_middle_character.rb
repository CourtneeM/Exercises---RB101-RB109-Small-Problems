def center_of(str)
  odd_length = str.length.odd?

  if odd_length
    str[str.length / 2]
  else
    str[((str.length / 2.0).floor - 1), 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
