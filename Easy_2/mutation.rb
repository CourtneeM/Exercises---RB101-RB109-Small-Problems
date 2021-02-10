# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# => ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

array2 = []
# => []

array1.each { |value| array2 << value }
# array2 => ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2 # => ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']

# The changes made to array1 also affect array2 because they point to the same String object.
# Line 9 simply copied the values from array1 into array2, so they referenced the same String object.
# By modifying the string in one of the arrays, it modifies it in the another array as well.
