execute at @s run playsound minecraft:entity.player.levelup

# Pay the entry fee
scoreboard players operation @s purse -= @s lottery_bids

# Update the players stats
scoreboard players operation @s lottery_total_bids += @s lottery_bids
scoreboard players add @s lottery_play_count 1
execute unless score @s lottery_scores = .highscore lottery_scores run scoreboard players set @s lottery_win_streak 0
function high_stakes_betting

# Pay the winner
execute if score @s lottery_scores = .highscore lottery_scores run function lottery:win
