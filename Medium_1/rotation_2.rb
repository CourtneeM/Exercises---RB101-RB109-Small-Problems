def rotate_array(arr)
  arr_copy = arr.dup
  rotated_element = arr_copy.shift
  arr_copy.push(rotated_element)
end

def rotate_rightmost_digits(nums, n)
  digits = nums.digits.reverse
  digits[-n, n] = rotate_array(digits[-n, n])
  digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
