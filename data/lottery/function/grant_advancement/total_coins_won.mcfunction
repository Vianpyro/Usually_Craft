execute if score @s lottery_total_gains matches ..99 run return fail
execute if score @s lottery_total_gains matches 100.. run advancement grant @s only lottery:total_coins_won/level_1
execute if score @s lottery_total_gains matches 1000.. run advancement grant @s only lottery:total_coins_won/level_2
execute if score @s lottery_total_gains matches 10000.. run advancement grant @s only lottery:total_coins_won/level_3
execute if score @s lottery_total_gains matches 100000.. run advancement grant @s only lottery:total_coins_won/level_4
execute if score @s lottery_total_gains matches 1000000.. run advancement grant @s only lottery:total_coins_won/level_5
