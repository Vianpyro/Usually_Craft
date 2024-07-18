scoreboard players set -1 buffer -1
scoreboard players operation @s purse *= -1 buffer
execute if score @s money < @s purse run return fail
return 1
