# Verify the player access rights
execute if score @s role matches ..9 run return run function main:message/generic/game_under_development {source:"Melon Bomber"}

#  Verify a game is not already in progress

# Teleport player to the game
function melon_bomber:teleport_to_area
