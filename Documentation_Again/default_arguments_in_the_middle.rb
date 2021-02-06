def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
# => [4, 5, 3, 6]

# Ruby will first assign 4 = a and 6 = d
# Then 5 = b and c will use the default value of 3
# I will assume that Ruby works from the outside in when assigning argument values when default values are in the middle of positional arguments

# https://docs.ruby-lang.org/en/2.0.0/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments
