# Return to spawn
execute if score @s go_to matches 1 run function spawn:teleport_to_spawn

# Reset go_to score
scoreboard players reset @s go_to
