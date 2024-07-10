# Count the number of entities
execute store result score ground_coins_count buffer run execute if entity @e[type=interaction,tag=ground_coin_interaction]

# Stop the function if the number of coins is greater than the maximum
execute if score ground_coins_count buffer >= max_ground_coins buffer run return fail

# Summon a coin if the number of coins is less than the maximum
execute positioned 14.5 -17 11.5 if loaded ~ ~ ~ run summon interaction ~ ~ ~ {width:0.3,height:0.1,Tags:["ground_coin_interaction","ground_coin_placing"]}
execute as @e[type=minecraft:interaction,tag=ground_coin_placing] at @s run function easter_egg:spawn/coins/place
