# Verify the player access rights
execute if score @s role matches ..9 run return run function main:message/generic/game_under_development {source:"Melon Bomber"}

#  Verify a game is not already in progress

# Teleport player to the game
tp @s 1024 2 1024 0 0
