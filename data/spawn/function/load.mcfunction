# Call the loops
schedule function spawn:loop/1_second 1s replace
schedule function spawn:loop/10_seconds 10s replace

# Setup the spawn NPCs
function spawn:npc/slots
function spawn:npc/summon {"game":"Survival", "entity":"villager", "slot":1, "go_to":2}
execute as @e[type=item] if predicate spawn:in_spawn run kill @s

say Loaded!
