# Call the loops
schedule function spawn:loop/1_second 1s replace

# Setup the spawn NPCs
function spawn:npc/slots
function spawn:npc/summon {"game":"TNT-Tag", "entity":"enderman", "slot":6, "go_to":6}
function spawn:npc/summon {"game":"Survival", "entity":"villager", "slot":9, "go_to":2}
function spawn:npc/summon {"game":"TNT-Run", "entity":"creeper", "slot":12, "go_to":5}
execute as @e[type=item] if predicate spawn:in_spawn run kill @s

say Loaded!
