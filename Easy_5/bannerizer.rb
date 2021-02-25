# input: a string
# output: the input string inside of a box

# Rules
#  Explicit requirements
#   - the input will always fit inside the terminal window
#  Implicit requirements
#   - the input will be a string
#   - there will be a blank row before and after the text
#   - there will be a blank space before and after the text on the same line
#   - the inside of the box is 3 rows tall and 1 column wide
#   - the corners of the box are '+'

# Test Cases
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# Algorithm
#  - initialize a variable called top_bottom_border and set equal to '+#{- * (input string size + 2)}+'
#  - initialize a variable called top_bottom_row and set equal to '|#{\s * (input string size + 2)}|'
#  - initialize a variable called middle_message_row and set equal to '|\s#{input string}\s|'
#  - print top_bottom_border, top_bottom_row, middle_message_row, top_bottom_row, top_bottom_border

# Tips
# whatever the length of the text, add 2 for the width
# the height will be static

# def print_in_box(str)
#   top_bottom_border = "+#{'-' * (str.size + 2)}+"
#   top_bottom_row = "|#{"\s" * (str.size + 2)}|"
#   middle_message_row = "|\s#{str}\s|"

#   puts top_bottom_border
#   puts top_bottom_row
#   puts middle_message_row
#   puts top_bottom_row
#   puts top_bottom_border
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

# Further Exploration

INNER_ROW_WIDTH = 76

def print_in_box(str)
  top_bottom_border = "+#{'-' * INNER_ROW_WIDTH}+"
  top_bottom_row = "|#{"\s" * INNER_ROW_WIDTH}|"

  count = 0
  new_line_point = INNER_ROW_WIDTH - 4
  split_str = str.split(/(\W)/)
  index = 0
  wrapped_arr = []
  temp_arr = []

  loop do
    break [''] if split_str.empty?
    word = split_str[index]
    count += word.size
    if count >= new_line_point && word == ' '
      new_line_point += INNER_ROW_WIDTH - 4
      wrapped_arr << temp_arr
      temp_arr = []
    else
      temp_arr << word
    end
    index += 1
    if index >= split_str.size
      wrapped_arr << temp_arr
      break
    end
  end

  middle_message_row = wrapped_arr.map do |inner_arr|
    row_spacing = (INNER_ROW_WIDTH - inner_arr.join('').size) / 2
    inner_arr << ' ' if (inner_arr.join('').size + (row_spacing * 2)) != 76
    "|#{"\s" * row_spacing}#{inner_arr.join('')}#{"\s" * row_spacing}|"
  end

  puts top_bottom_border
  puts top_bottom_row
  puts middle_message_row
  puts top_bottom_row
  puts top_bottom_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('Hodor. Hodor hodor, hodor. Hodor hodor hodor hodor hodor. Hodor. Hodor! Hodor hodor, hodor; hodor hodor hodor. Hodor. Hodor hodor; hodor hodor - hodor, hodor, hodor hodor. Hodor, hodor. Hodor. Hodor, hodor hodor hodor; hodor hodor; hodor hodor hodor! Hodor hodor HODOR! Hodor hodor... Hodor hodor hodor...')
print_in_box('')
