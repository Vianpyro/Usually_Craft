# Retrieve the goal
execute store result score fibonacci_goal_n buffer run data get storage minecraft:fibonacci_goal n

# Return 1 if the goal is under 2
execute if score fibonacci_goal_n buffer matches ..2 buffer run return run scoreboard players set fibonacci_temp buffer 1

# Return 15'000 if the goal is over 20
execute if score fibonacci_goal_n buffer matches 20.. run return run scoreboard players set fibonacci_temp buffer 11000

# Otherwise, initialize the scores
scoreboard players set fibonacci_a buffer 1
scoreboard players set fibonacci_b buffer 1
scoreboard players set fibonacci_temp buffer 1
scoreboard players set fibonacci_current_n buffer 2

# Return the value
return run function main:function/fibonacci/next
