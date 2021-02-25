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

def print_in_box(str)
  top_bottom_border = "+#{'-' * (str.size + 2)}+"
  top_bottom_row = "|#{"\s" * (str.size + 2)}|"
  middle_message_row = "|\s#{str}\s|"

  puts top_bottom_border
  puts top_bottom_row
  puts middle_message_row
  puts top_bottom_row
  puts top_bottom_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
