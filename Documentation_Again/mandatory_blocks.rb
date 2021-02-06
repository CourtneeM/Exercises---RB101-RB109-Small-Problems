a = [1, 4, 8, 11, 15, 19]
p a.bsearch { |x| x > 8 }

# The array must be sorted (or monotone) for bsearch to work properly
