# def sequence(num)
#   (1..num).to_a
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]


# Further exploration

def sequence(num)
  1.downto(num).to_a
end

p sequence(-5) == [1, 0, -1, -2, -3, -4, -5]
p sequence(-3) == [1, 0, -1, -2, -3]
p sequence(-1) == [1, 0, -1]
