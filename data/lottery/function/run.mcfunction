# Cancel the lottery if there is only one player
execute if score .player_count lottery_scores matches ..1 as @a run function main:message/error {"source":"Lottery","message":'"text":"The lottery has been canceled due to insufficient participation."'}

# Otherwise, announce the winner
execute if score .player_count lottery_scores matches 2.. as @a[scores={lottery_bids=1..}] run function lottery:end

# Reset the lottery
scoreboard players reset * lottery_bids
scoreboard players reset * lottery_scores
