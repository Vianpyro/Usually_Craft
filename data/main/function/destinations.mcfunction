# Join the survival server
execute if score @s go_to matches 1 run function main:join_survival

# Return to spawn
execute if score @s go_to matches 2 run function spawn:teleport_to_spawn

# Reset go_to score
scoreboard players reset @s go_to
