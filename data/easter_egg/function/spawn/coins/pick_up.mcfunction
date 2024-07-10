playsound minecraft:entity.experience_orb.pickup player @s
execute as @e[type=item_display,tag=ground_coin,distance=..1.625] run scoreboard players add @a[scores={go_to=3},distance=..1.625] purse 1
execute as @e[type=item_display,tag=ground_coin,distance=..1.625] run kill @s
execute as @e[type=interaction,tag=ground_coin_interaction,distance=..1.625] run kill @s
