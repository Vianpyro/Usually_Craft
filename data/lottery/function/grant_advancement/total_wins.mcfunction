execute if score @s lottery_win_count matches ..0 run return fail
execute if score @s lottery_win_count matches 1.. run advancement grant @s only lottery:total_wins/level_1
execute if score @s lottery_win_count matches 10.. run advancement grant @s only lottery:total_wins/level_2
execute if score @s lottery_win_count matches 50.. run advancement grant @s only lottery:total_wins/level_3
execute if score @s lottery_win_count matches 100.. run advancement grant @s only lottery:total_wins/level_4
execute if score @s lottery_win_count matches 500.. run advancement grant @s only lottery:total_wins/level_5
