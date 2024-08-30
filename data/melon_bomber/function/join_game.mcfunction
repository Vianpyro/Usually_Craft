# Verify the player access rights
execute store result score .melon_bomber_npc_easter_egg buffer run random value 0..10
execute if score @s role matches ..9 if score .melon_bomber_npc_easter_egg buffer matches 7 as @e[type=creeper,tag=spawn_Melon-Bomber_npc] at @s positioned ~ ~1 ~ run function melon_bomber:explosion {radius:59}
execute if score @s role matches ..9 run return run function main:message/generic/game_under_development {source:"Melon Bomber"}

#  Verify a game is not already in progress

# Teleport player to the game
function melon_bomber:teleport_to_area
