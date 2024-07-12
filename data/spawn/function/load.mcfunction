# Create the scores
function spawn:setup/scores

# Setup the teams
function spawn:setup/teams

# Call the loops
schedule function spawn:loop/1_second 1s replace
schedule function spawn:loop/10_seconds 10s replace
schedule function spawn:loop/1_minute 60s replace
schedule function spawn:loop/10_minutes 600s replace
schedule function spawn:loop/1_hour 3600s replace

# Setup the spawn NPCs
function spawn:setup/game_entities/slots
function spawn:setup/game_entities/summon_npc {"slot":9,"entity":"minecraft:villager","go_to":2,"game":"Survival"}

say Loaded!
