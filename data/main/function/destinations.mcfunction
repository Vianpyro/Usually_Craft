# Revoke action advancement
advancement revoke @s only main:action

# Return to spawn
execute if score @s action matches 1 run function spawn:teleport_to_spawn

# Join the survival server
execute if score @s action matches 2 run function main:join_survival

# Pick up a coin
execute if score @s action matches 3 at @s positioned ^ ^ ^1.5 run function easter_egg:spawn/coins/pick_up

# Check total owned money
execute if score @s action matches 4 run function main:money/balance

# Claim daily reward
execute if score @s action matches 5 run function main:daily_reward/claim

# Reset action score
scoreboard players set @s action 0
