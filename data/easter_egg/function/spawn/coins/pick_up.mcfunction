playsound minecraft:entity.experience_orb.pickup player @s
execute as @s run function easter_egg:spawn/coins/grant_advancement
execute at @s as @e[type=item_display,tag=ground_coin,sort=nearest,limit=1] run function easter_egg:spawn/coins/give_coin
execute at @s as @e[type=interaction,tag=ground_coin_interaction,sort=nearest,limit=1] run kill @s
