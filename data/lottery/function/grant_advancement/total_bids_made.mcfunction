execute if score @s lottery_play_count matches ..0 run return fail
execute if score @s lottery_play_count matches 1.. run advancement grant @s only lottery:total_bids_made/level_1
execute if score @s lottery_play_count matches 10.. run advancement grant @s only lottery:total_bids_made/level_2
execute if score @s lottery_play_count matches 100.. run advancement grant @s only lottery:total_bids_made/level_3
execute if score @s lottery_play_count matches 1000.. run advancement grant @s only lottery:total_bids_made/level_4
execute if score @s lottery_play_count matches 10000.. run advancement grant @s only lottery:total_bids_made/level_5
