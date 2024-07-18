# Call the loops
schedule function spawn:loop/1_second 1s replace
schedule function spawn:loop/10_seconds 10s replace

# Setup the spawn NPCs
function spawn:npc/slots
function spawn:npc/summon {"game":"Survival","entity":"zombie","slot":1,"action":2}
function spawn:npc/summon {"game":"Daily-Reward","entity":"villager","slot":2,"action":5}
execute as @e[type=item] if predicate spawn:in_spawn run kill @s

say Loaded!
