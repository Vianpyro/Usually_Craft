# Create the scores
function main:setup/scores

# Create the scores
function spawn:setup/teams

# Setup the gamerules
fcuntion main:setup/gamerules

# Setup the NPCs sizes
function main:npc/size

# Call the loops
schedule function main:loop/1_second 1s replace
# schedule function main:loop/10_seconds 10s replace
# schedule function main:loop/1_minute 60s replace
# schedule function main:loop/10_minutes 600s replace
# schedule function main:loop/1_hour 3600s replace
