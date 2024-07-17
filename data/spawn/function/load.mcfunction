# Call the loops
schedule function spawn:loop/1_second 1s replace

# Setup the spawn NPCs
function spawn:npc/slots
function spawn:npc/summon {"game":"Survival", "entity":"villager", "slot":9, "go_to":2}
execute as @e[type=item] if predicate spawn:in_spawn run kill @s

say Loaded!
