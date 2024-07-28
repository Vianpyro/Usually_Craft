function spawn:teleport_to_spawn
scoreboard players set @s join 0
advancement revoke @s only main:login

# Leave team so the title only shows to the player name
team leave @s

# Welcome banner
title @s times 0 50 10
title @s subtitle ["",{"text":"Welcome ","color":"dark_green"},{"selector":"@s","color":"dark_aqua"},{"text":"!","color":"dark_green"}]
title @s title {"text":"Usually Craft","color":"gold"}

# Assign rank
function main:login/assign_rank

# Play login sound
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 0.8

# Greet players
say Hello!

# Grant advancements
function issue:grant_advancement
