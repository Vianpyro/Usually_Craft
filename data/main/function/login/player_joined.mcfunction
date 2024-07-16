function spawn:teleport_to_spawn
scoreboard players set @s join 0
advancement revoke @s only main:login

# Welcome banner
title @s times 0 50 10
title @s subtitle ["",{"text":"Welcome ","color":"dark_green"},{"selector":"@s","color":"dark_aqua"},{"text":"!","color":"dark_green"}]
title @s title {"text":"Usually Craft","color":"gold"}

# Assign rank
function main:login/assign_rank

say Hello!
