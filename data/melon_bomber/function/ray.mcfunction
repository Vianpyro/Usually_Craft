scoreboard players add .ray_radius buffer 1
execute if score .ray_radius buffer > .ray_radius_max buffer run return run scoreboard players reset .ray_radius buffer

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @a[distance=..1,gamemode=adventure] run function melon_bomber:lose
execute if block ~ ~ ~ spruce_planks run playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 0.5
fill ~ 0 ~ ~ 1 ~ air replace spruce_planks
execute if score .ray_radius buffer < .ray_radius_max buffer if block ~ ~ ~ air positioned ^ ^ ^1 run function melon_bomber:ray
