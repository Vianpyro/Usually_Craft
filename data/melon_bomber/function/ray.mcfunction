scoreboard players add .ray_radius buffer 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
fill ~ ~-1 ~ ~ ~2 ~ air replace spruce_planks
execute if score .ray_radius buffer < .ray_radius_max buffer if block ~ ~ ~ air positioned ^ ^ ^1 run function melon_bomber:ray
execute if score .ray_radius buffer >= .ray_radius_max buffer run scoreboard players reset .ray_radius buffer
