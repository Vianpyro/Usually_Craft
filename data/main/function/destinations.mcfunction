# Return to spawn
execute if score @s go_to matches 1 run function spawn:teleport_to_spawn

# Join the survival server
execute if score @s go_to matches 2 run function main:join_survival

# Reset go_to score
scoreboard players reset @s go_to

# Revoke go_to advancement
advancement revoke @s only main:go_to
