tellraw @a ["",{"text":"[Lottery] ","color":"gold"},{"selector":"@s"},{"text":" wins the lottery!","color":"blue"}]
scoreboard players operation @s purse += .total_bids lottery_scores

# Update the player's stats
scoreboard players operation @s lottery_total_gains += .total_bids lottery_scores
scoreboard players operation @s lottery_total_gains -= @s lottery_bids
scoreboard players add @s lottery_win_count 1
scoreboard players add @s lottery_win_streak 1
