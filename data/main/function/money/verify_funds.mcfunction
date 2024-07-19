scoreboard players set -1 buffer -1
scoreboard players operation @s purse *= -1 buffer
scoreboard players reset -1 buffer
execute if score @s money < @s purse run function main:money/insufficient_funds
