execute if score @s lottery_win_streak matches ..2 run return fail
execute if score @s lottery_win_streak matches 3.. run advancement grant @s only lottery:consecutive_wins/level_1
execute if score @s lottery_win_streak matches 5.. run advancement grant @s only lottery:consecutive_wins/level_2
execute if score @s lottery_win_streak matches 10.. run advancement grant @s only lottery:consecutive_wins/level_3
execute if score @s lottery_win_streak matches 15.. run advancement grant @s only lottery:consecutive_wins/level_4
execute if score @s lottery_win_streak matches 20.. run advancement grant @s only lottery:consecutive_wins/level_5
