# Verify the player's bid
execute if score @s bid matches ..9 run return run function lottery:error/bid_too_low
execute if score @s bid > @s money run return run function lottery:error/insufficient_funds

# Verifiy that the player has not already bid
execute if score @s lottery_bids matches 0.. run return run function lottery:error/already_joined

# Store the bid
scoreboard players operation @s lottery_bids = @s bid
scoreboard players operation .total_bids lottery_scores += @s bid

# Reset the triggers
function lottery:reset_triggers

# Add the player to the player count
scoreboard players add .player_count lottery_scores 1

# Announce the new player and their bid
function main:message/success {"source":"Lottery","message":'"text":"You have joined the lotery!"'}
tellraw @a ["",{"text":"[Lottery] ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" bids ","color":"blue"},{"score":{"name":"@s","objective":"lottery_bids"},"color":"gold"},{"text":" u-coins!","color":"blue"}]

# Roll the dice
execute store result score @s lottery_scores run function math:random/score_max {"score":"lottery_bids"}
scoreboard players add .highscore lottery_scores 0
execute if score @s lottery_scores > .highscore lottery_scores run scoreboard players operation .highscore lottery_scores = @s lottery_scores

# Start the count down for the lottery
execute if score .player_count lottery_scores matches 1 run function main:message/alert {"source":"Lottery","message":'"text":"Rolling the dice in 30 seconds!"'}
execute if score .player_count lottery_scores matches 1 run return run schedule function lottery:run 30s replace

# Update the count down for the lottery when a player joins
execute if score .player_count lottery_scores matches 2.. as @a run function main:message/alert {"source":"Lottery","message":'"text":"Rolling the dice in 10 seconds!"'}
execute if score .player_count lottery_scores matches 2.. run schedule function lottery:run 10s replace
