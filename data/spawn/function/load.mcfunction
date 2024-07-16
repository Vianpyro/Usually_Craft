# Call the loops
schedule function spawn:loop/1_second 1s replace

# Setup the spawn NPCs
function spawn:setup/slots
function spawn:setup/game_entities/summon_npc {"slot":6,"entity":"minecraft:enderman","go_to":6,"game":"TNT-Tag"}
function spawn:setup/game_entities/summon_npc {"slot":9,"entity":"minecraft:villager","go_to":2,"game":"Survival"}
function spawn:setup/game_entities/summon_npc {"slot":12,"entity":"minecraft:creeper","go_to":5,"game":"TNT-Run"}
execute as @e[type=item] if predicate spawn:in_spawn run kill @s

say Loaded!
