playsound minecraft:block.nether_gold_ore.fall player @s
execute at @s as @e[type=item_display,tag=ground_coin_pouch,sort=nearest,limit=1] run function easter_egg:spawn/coins_pouch/give_coin
execute as @s run function easter_egg:spawn/coins/grant_advancement
execute at @s as @e[type=interaction,tag=ground_coin_pouch_interaction,sort=nearest,limit=1] run kill @s
