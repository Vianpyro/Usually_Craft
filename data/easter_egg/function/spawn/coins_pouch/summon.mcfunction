# If the limit is not set do not summon coins
execute unless score .max_ground_coin_pouches buffer matches 1.. run return fail

# Count the number of entities
execute store result score .ground_coin_pouches_count buffer if entity @e[type=interaction,tag=ground_coin_pouch_interaction]

# Stop the function if the number of coins is greater than the maximum
execute if score .ground_coin_pouches_count buffer >= .max_ground_coin_pouches buffer run return fail

# Summon a coin if the number of coins is less than the maximum
execute as @r positioned 14.5 -17 11.5 if loaded ~ ~ ~ run summon interaction ~ ~ ~ {width:0.5,height:0.5,Tags:["ground_coin_pouch_interaction","ground_coin_pouch_placing"]}
execute store result storage easter_egg:coins_pouch max_height int 1 run random value 75..140
execute as @e[type=minecraft:interaction,tag=ground_coin_pouch_placing] at @r[predicate=spawn:in_area] run function easter_egg:spawn/coins_pouch/place with storage easter_egg:coins_pouch

# Collect garbage
data remove storage easter_egg:coins_pouch max_height
