tellraw @a ["",{"text":"[Lottery] ","color":"gold"},{"text":"The winner of the lottery is ","color":"blue"},{"selector":"@s"},{"text":"!","color":"blue"}]
scoreboard players operation @s purse += .total_bids lottery_scores

# Update the player's stats
scoreboard players add @s lottery_win_count 1
scoreboard players operation @s lottery_total_gains += .total_bids lottery_scores
execute if score @s lottery_won_last_time matches 1 run scoreboard players add @s lottery_win_streak 1
scoreboard players set @s lottery_won_last_time 1
