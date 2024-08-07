# Make sure the player is not spectating anyone
spectate

# Add the spawn protection
function spawn:protection {"item":"minecraft:oak_button"}
effect give @s minecraft:regeneration 1 255 true

# Teleport the player to the spawn point
tp @s 8 155 0 0 0

# Set the player game mode to adventure
gamemode adventure @s

# Revoke the "under-spawn" advancement
advancement revoke @s only spawn:under_area

# Notify the player that they have been teleported to the spawn point
function main:message/notice {"source":"Server","message":'"text":"You have been teleported to the spawn"'}
