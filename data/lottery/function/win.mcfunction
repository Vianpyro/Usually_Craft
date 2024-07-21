tellraw @a ["",{"text":"[Lottery] ","color":"gold"},{"text":"The winner of the lottery is ","color":"blue"},{"selector":"@s"},{"text":"!","color":"blue"}]
scoreboard players operation @s purse += .total_bids lottery_scores
