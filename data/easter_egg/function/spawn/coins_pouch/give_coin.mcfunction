execute store result score .coins_pouch_value buffer run random value 7..21
scoreboard players operation @a[scores={go_to=6},sort=nearest,limit=1] purse += .coins_pouch_value buffer
scoreboard players operation @a[scores={go_to=6},sort=nearest,limit=1] picked_up_coins += .coins_pouch_value buffer

# Reset the buffer
scoreboard players reset .coins_pouch_value buffer

kill @s
