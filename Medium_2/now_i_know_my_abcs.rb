# Problem
#   - Given a collection of spelling blocks, with two letters per block,
#     determine if the input string can be spelled from the set of blocks.

# Input: a string
# Output: a Boolean

# Rules
#   Explicit requirements
#     - There are 13 blocks total.
#     - Each block has 2 letters.
#     - Once a block has been used, it cannot be used again.
#       - Meaning the letter that shares the block cannot be used.
#     - Return true if the input string can be spelled using the blocks, otherwise return false.
#   Implicit requirements
#     - The blocks are case insensitive.

# Test Cases
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# Data Structure
#   - a hash

# Algorithm
#   initialize_block_use
#     - Create a hash called block_collection
#       - Set the keys equal to an array containing the block combinations
#       - Set the values as 0
#   block_word?
#     - Create a variable called blocks and set equal to the method call initialize_block_use
#     - Split the input string where each character is an element in an array, and iterate over it.
#       - For each character, check the blocks variable for that character.
#         - For that character's block, increment its value by 1.
#     - If any of the values in block are greater than 1
#       - Return false
#     - Otherwise, return true

BLOCK_COLLECTION = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
                    ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
                    ['V', 'I'], ['L', 'Y'], ['Z', 'M']].freeze

def initialize_block_use
  blocks = {}
  BLOCK_COLLECTION.each { |block| blocks[block] = 0 }
  blocks
end

def block_word?(str)
  blocks = initialize_block_use
  str.each_char do |char|
    blocks.each { |block, _v| blocks[block] += 1 if block.include?(char.upcase) }
  end
  blocks.values.reject { |num| num <= 1 }.empty?
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
