# Create the scores
function main:setup/scores

# Create the scores
function spawn:setup/teams

# Setup the gamerules
function main:setup/gamerules

# Setup the NPCs sizes
function main:npc/size

# Call the loops
schedule function main:loop/1_second 1s replace
schedule function main:loop/1_minute 60s replace
schedule function main:loop/1_hour 3600s replace

# Setblock a barrel for data storage
setblock 8 153 0 barrel[facing=down] replace
