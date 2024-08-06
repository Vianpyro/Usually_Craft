# # Reset the game_reward scores
# scoreboard players reset * game_reward

# # Reward the player for completing easter egg
# execute store result score easter_egg game_reward run function math:random/score_max {"score":"easter_egg_completed"}
# scoreboard players operation @s purse += easter_egg game_reward

# # Reward the player for the number of players at the start of the game
# execute store result score player_count game_reward run function math:fibonacci with storage math:fibonacci
# scoreboard players operation @s purse += player_count game_reward
$execute if data storage main:reward [{UUID:$(UUID)}] run say Hey!
$data remove storage main:reward [{UUID:$(UUID)}]
