execute if score @s picked_up_coins matches ..0 run return fail
execute if score @s picked_up_coins matches 1.. run advancement grant @s only easter_egg:spawn/coins/level_1
execute if score @s picked_up_coins matches 10.. run advancement grant @s only easter_egg:spawn/coins/level_2
execute if score @s picked_up_coins matches 100.. run advancement grant @s only easter_egg:spawn/coins/level_3
execute if score @s picked_up_coins matches 1000.. run advancement grant @s only easter_egg:spawn/coins/level_4
execute if score @s picked_up_coins matches 10000.. run advancement grant @s only easter_egg:spawn/coins/level_5
execute if score @s picked_up_coins matches 100000.. run advancement grant @s only easter_egg:spawn/coins/level_6
execute if score @s picked_up_coins matches 1000000.. run advancement grant @s only easter_egg:spawn/coins/level_7
