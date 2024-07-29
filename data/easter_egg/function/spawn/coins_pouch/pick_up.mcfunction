playsound minecraft:block.nether_gold_ore.fall player @s
execute at @s as @n[type=item_display,tag=ground_coin_pouch,limit=1] run function easter_egg:spawn/coins_pouch/give_coin
function easter_egg:spawn/coins/grant_advancement
advancement grant @s only easter_egg:spawn/coins/pouch
execute at @s as @n[type=interaction,tag=ground_coin_pouch_interaction,limit=1] run kill @s
