def fibonacci(n)
  fib = []
  first = 1
  last = 0
  1.upto(n) do
    fib << first
    first += last
    last = fib[-1]
  end
  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501 # super long
