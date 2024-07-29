# If the limit is not set do not summon coins
execute unless score .max_ground_coins buffer matches 1.. run return fail

# Count the number of entities
execute store result score .ground_coins_count buffer if entity @e[type=interaction,tag=ground_coin_interaction]

# Stop the function if the number of coins is greater than the maximum
execute if score .ground_coins_count buffer >= .max_ground_coins buffer run return fail

# Summon a coin if the number of coins is less than the maximum
execute as @r positioned 14.5 -17 11.5 if loaded ~ ~ ~ run summon interaction ~ ~ ~ {width:0.3,height:0.1,Tags:["ground_coin_interaction","ground_coin_placing"]}
execute as @e[type=minecraft:interaction,tag=ground_coin_placing] at @r[predicate=spawn:in_spawn] run function easter_egg:spawn/coins/place
