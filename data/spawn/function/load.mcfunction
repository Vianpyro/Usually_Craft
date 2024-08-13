# Call the loops
schedule function spawn:loop/1_second 1s replace
schedule function spawn:loop/10_seconds 10s replace
schedule function spawn:loop/10_minutes 600s replace

# Kill all the entities in the spawn
execute as @e[type=!player] at @s if predicate spawn:in_area run kill @s

# Setup the spawn NPCs
function spawn:npc/slots
function spawn:npc/summon {"game":"Daily-Reward","entity":"villager","slot":1,"go_to":5}
function spawn:npc/summon {"game":"Survival","entity":"zombie","slot":2,"go_to":2}
execute as @e[type=item] at @s if predicate spawn:in_area run kill @s

# Add the decoration entities
function spawn:houses

# Add the bossbar
function spawn:news_bossbar
