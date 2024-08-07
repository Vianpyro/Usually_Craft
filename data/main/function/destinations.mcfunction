# Revoke go_to advancement
advancement revoke @s only main:go_to

# Return to spawn
execute if score @s go_to matches 1 run function spawn:teleport_to_spawn

# Join the survival server
execute if score @s go_to matches 2 if score @s role matches ..1 run function main:message/error {"source":"Server","message":'"text":"You need to verify your account first!"'}
execute if score @s go_to matches 2 if score @s role matches 2.. run function survival:join_game

# Pick up a coin
execute if score @s go_to matches 3 at @s positioned ^ ^ ^1.5 run function easter_egg:spawn/coins/pick_up

# Check total owned money
execute if score @s go_to matches 4 run function main:money/balance

# Claim daily reward
execute if score @s go_to matches 5 run function main:daily_reward/claim

# Pick up a coin pouch
execute if score @s go_to matches 6 at @s positioned ^ ^ ^1.5 run function easter_egg:spawn/coins_pouch/pick_up

# Join the melon bomber game
execute if score @s go_to matches 7 run function melon_bomber:join_game

# Reset go_to score
scoreboard players set @s go_to 0
