playsound minecraft:entity.experience_orb.pickup player @s
execute as @e[type=item_display,tag=ground_coin,distance=..1.625] run function easter_egg:spawn/coins/give_coin
execute as @e[type=interaction,tag=ground_coin_interaction,distance=..1.625] run kill @s
