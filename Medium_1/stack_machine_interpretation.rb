# input: a string
# output: print values when the stack calls for it

# Rules
#  Explicit requirements
#  - use the provided keywords to perform operations
#  - to perform an operation requiring 2 values, use the register value and the value at the top of the stack
#  - the register value is not part of the stack
#  - all operations are integer operations
#  - initialize the register with a value of 0

# Test Cases
# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

# Problem
# - Create a miniature stack-and-register-based programming language with
#   commands using keywords provided by the exercise.

# Data Structure
# - input will be a string
# - stack will be an array
# - commands will be saved to a variable and evaluated by a case statement

# Algorithm
# - create a variable called program and set equal to input str split
# - create a variable called program_size and set equal to program.size
# - create a variable called register and set equal to 0
# - create a variable called stack and set equal to an empty array
# - create a loop that repeats for the size of the program
#   - shift the first value from program and save to a variable called n
#   - if n converted to an integer and back to string is equal to n
#     - set equal to register
#     - otherwise continue to the case statement
#   - create a variable called command and set equal to shifting the commands array
#   - create a case statement with all the exercise keywords

# Tips
# - Take the stack str and split it into an array where each element is a value or command
# - take integer values and send them to an array called stack
# - make a case statement with all the exercise keywords as when statements (ADD, SUB, MULT...)
# - if value then add to stack, if case keyword then go through case statement
# - print the register value

def minilang(program)
  register = 0
  stack = []

  program.split.each do |step|
    p step
    case step
    when 'PUSH'  then stack.push(register)
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = step.to_i
    end
    p stack
  end
end

# =============================================================================

# Further Exploration
# (3 + (4 * 5) - 7) / (5 % 3)

minilang("3 PUSH 5 MOD PUSH 4 PUSH 5 MULT PUSH 7 PUSH 3 SUB ADD DIV PRINT")
# [3] 5 MOD => 2
# [2, 4] 5 MULT => 20
# [2, 20, 7] 3 SUB => -4
# [2, 20] -4 ADD => 16
# [2] 16 DIV => 8

# =============================================================================

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
