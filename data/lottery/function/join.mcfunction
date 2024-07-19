# Verify the player's bid
execute if score @s bid matches ..9 run return run function lottery:bid_too_low
execute if score @s money matches ..9 run return run function lottery:insufficient_funds

# Verify that the player hasn't already joined
function main:get_player_name
execute store success score join_loto buffer run function lottery:append with storage main:buffer
execute if score join_loto buffer matches 0 run return run function lottery:already_joined

# Pay the bid
scoreboard players operation @s purse -= @s bid

# Announce the new player and their bid
function main:message/success {"source":"Lottery","message":'"text":"You have joined the lotery!"'}
tellraw @a ["",{"text":"[Lottery] ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" bids ","color":"blue"},{"score":{"name":"@s","objective":"bid"},"color":"gold"},{"text":" u-coins!","color":"blue"}]

# Retrieve the player count
execute store result score lottery_player_count buffer run data get storage game:lottery player_count

# Calculate the score
execute store result score lottery_score buffer run function math:random/score_max {"score":"bid"}

# Store the highest score and the player's id
execute store result score lottery_highscore buffer run data get storage game:lottery highscore 1
execute if score lottery_score buffer >= lottery_highscore buffer run function lottery:highscore

# Add 1 to the player count
execute store result storage game:lottery player_count int 1 run scoreboard players add lottery_player_count buffer 1

# Add the bid to the total
execute store result score loto_total_bid buffer run data get storage game:lottery total_bid
execute store result storage game:lottery total_bid int 1 run scoreboard players operation loto_total_bid buffer += @s bid

# (Re)-set the timer
schedule function lottery:run 30s replace
execute as @a run function main:message/alert {"source":"Lottery","message":'"text":"Rolling the dice in 30 seconds!"'}

function lottery:reset_triggers
