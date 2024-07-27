execute if score @s lottery_bids matches ..9 run return fail
execute if score @s lottery_bids matches 100.. run advancement grant @s only lottery:high_stakes_betting/level_1
execute if score @s lottery_bids matches 1000.. run advancement grant @s only lottery:high_stakes_betting/level_2
execute if score @s lottery_bids matches 10000.. run advancement grant @s only lottery:high_stakes_betting/level_3
execute if score @s lottery_bids matches 100000.. run advancement grant @s only lottery:high_stakes_betting/level_4
execute if score @s lottery_bids matches 1000000.. run advancement grant @s only lottery:high_stakes_betting/level_5
