# Make sure the player is not spectating anyone
spectate

# Teleport the player to the spawn point
tp @s 5 -7 11 90 0

# Set the player game mode to adventure
gamemode adventure @s

# Revoke the "under-spawn" advancement
advancement revoke @s only spawn:under_spawn

# Notify the player that they have been teleported to the spawn point
function main:message/notice {"source":"Server","message":'"text":"You have been teleported to the spawn"'}
