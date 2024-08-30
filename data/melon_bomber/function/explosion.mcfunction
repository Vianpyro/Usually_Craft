playsound minecraft:entity.generic.explode block @a ~ ~ ~

$scoreboard players set .ray_radius_max buffer $(radius)
scoreboard players reset .ray_radius buffer
execute rotated 0 0 run function melon_bomber:ray
execute rotated 90 0 run function melon_bomber:ray
execute rotated 180 0 run function melon_bomber:ray
execute rotated -90 0 run function melon_bomber:ray

# Garbage collection
scoreboard players reset .ray_radius_max buffer
