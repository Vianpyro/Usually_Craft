# Return to spawn
execute if score @s go_to matches 1 run function spawn:teleport_to_spawn

# Join the survival server
execute if score @s go_to matches 2 run function main:join_survival

# Pick up a coin
execute if score @s go_to matches 3 at @s positioned ^ ^ ^1.5 run function easter_egg:spawn/coins/pick_up

# Reset go_to score
scoreboard players set @s go_to 0

# Revoke go_to advancement
advancement revoke @s only main:go_to
