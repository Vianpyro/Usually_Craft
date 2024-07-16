# Make sure the player is not spectating anyone
spectate

# Teleport the player to the spawn point
tp @s 5 -7 11 90 0

# Set the player game mode to adventure
gamemode adventure @s

# Revoke the "under-spawn" advancement
advancement revoke @s only spawn:under_spawn
