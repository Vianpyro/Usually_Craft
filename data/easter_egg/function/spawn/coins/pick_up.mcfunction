playsound minecraft:entity.experience_orb.pickup player @s
execute at @s as @n[type=item_display,tag=ground_coin,limit=1] run function easter_egg:spawn/coins/give_coin
execute as @s run function easter_egg:spawn/coins/grant_advancement
execute at @s as @n[type=interaction,tag=ground_coin_interaction,limit=1] run kill @s
