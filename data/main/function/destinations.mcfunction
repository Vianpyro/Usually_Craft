# Join survival world
execute if score @s go_to matches 1 run transfer orangepi.hole 27565

# Return to spawn
execute if score @s go_to matches 2 run function spawn:teleport_to_spawn

# Reset go_to score
scoreboard players set @s go_to 0
