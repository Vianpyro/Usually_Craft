# Teleport to location
tp @s 1024 2 1024 0 0

# Set the player game mode to adventure
gamemode adventure @s

# Revoke the "under-area" advancement
advancement revoke @s only melon_bomber:under_area

# Notify the player that they have been teleported
function main:message/notice {"source":"Melon Bomber","message":'"text":"You have been teleported to Melon Bomber"'}
