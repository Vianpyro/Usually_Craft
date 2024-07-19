# Call the loops
schedule function spawn:loop/1_second 1s replace
schedule function spawn:loop/10_seconds 10s replace

# Kill all the entities in the spawn
execute as @e[type=!player] if predicate spawn:in_spawn run kill @s

# Setup the spawn NPCs
function spawn:npc/slots
function spawn:npc/summon {"game":"Survival","entity":"zombie","slot":1,"go_to":2}
function spawn:npc/summon {"game":"Daily-Reward","entity":"villager","slot":2,"go_to":5}
execute as @e[type=item] if predicate spawn:in_spawn run kill @s

# Add the decoration entities
function spawn:houses
