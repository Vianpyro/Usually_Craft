# Next = a + b
scoreboard players operation fibonacci_a buffer += fibonacci_b buffer
scoreboard players operation fibonacci_temp buffer = fibonacci_a buffer

# a = b
scoreboard players operation fibonacci_a buffer = fibonacci_b buffer

# b = next
scoreboard players operation fibonacci_b buffer = fibonacci_temp buffer

# Current_n++
scoreboard players add fibonacci_current_n buffer 1

# Return the value if the goal is reached
execute if score fibonacci_current_n buffer > fibonacci_goal_n buffer run return run function main:function/fibonacci/end

# Otherwise, recall the function
return run function main:function/fibonacci/next
