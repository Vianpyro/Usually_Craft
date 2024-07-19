# Validate the score
$execute if score @s $(score) matches ..1 run return fail

# Store the score
data modify storage math:random min set value 0
$execute store result storage math:random max int 1 run scoreboard players get @s $(score)

# Return the random value
return run function math:random with storage math:random
