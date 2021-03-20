def rotate_rightmost_digits(nums, n)
  num_to_rotate = nums.digits.reverse[-n]
  arr = nums.digits.reverse.reject { |num| num == num_to_rotate }
  arr.push(num_to_rotate).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
