# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number. 

# input: an integer
# output: a string

# Test Cases:
# input: 2000
# output: '20th'
# input: 5
# output: '1st'

# Algorithm:
# Create a constant called ORDINALS and set equal to a hash with the number range and proper number ending string
# Divide parameter integer by 100
# Search hash for matching ordinal
# Return divided integer with ordinal

# Pseudo-Code:

# START

# # Given and integer, determine what century the integer represents.

# SET ORDINALS = { insert num ordinals here }

# SET century = num / 100 and round up
# SET ordinal = ORDINALS.keys.select { |key| key.include?(century) }.join
# RETURN century + ORDINALS[ordinal.to_sym]

# END

# Tips:
# ending in 0 && 4-9 && 10-20 end in th
# 1 ends in st
# 2 ends in nd
# 3 ends in rd
# divide year by 100 and round up (ceil) to get century

# -----------------------------------------------------------------------------

def century(year)
  ordinals = {
    1 => 'st',
    2 => 'nd',
    3 => 'rd'
  }

  century = (year.to_f / 100).ceil
  ordinal = ordinals.select do |key, value|
    break 'th' if century.digits.reverse[-2] == 1
    break value if century.to_s.end_with?(key.to_s)
  end

  ordinal = 'th' if ordinal.empty?

  "#{century}#{ordinal}"
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
