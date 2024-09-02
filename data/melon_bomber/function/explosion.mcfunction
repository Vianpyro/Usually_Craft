playsound minecraft:entity.generic.explode block @a ~ ~ ~

$execute unless block ~1 0 ~ polished_andesite run fill ~$(radius) 0 ~ ~ 1 ~ air replace spruce_planks
$execute unless block ~ 0 ~1 polished_andesite run fill ~ 0 ~$(radius) ~ 1 ~ air replace spruce_planks
$execute unless block ~-1 0 ~ polished_andesite run fill ~-$(radius) 0 ~ ~ 1 ~ air replace spruce_planks
$execute unless block ~ 0 ~-1 polished_andesite run fill ~ 0 ~-$(radius) ~ 1 ~ air replace spruce_planks

$execute unless block ~1 0 ~ polished_andesite align xz run kill @e[type=minecraft:armor_stand,y=0,dy=1,dx=$(radius)]
$execute unless block ~ 0 ~1 polished_andesite align xz run kill @e[type=minecraft:armor_stand,y=0,dy=1,dz=$(radius)]
$execute unless block ~-1 0 ~ polished_andesite align xz run kill @e[type=minecraft:armor_stand,y=0,dy=1,dx=-$(radius)]
$execute unless block ~ 0 ~-1 polished_andesite align xz run kill @e[type=minecraft:armor_stand,y=0,dy=1,dz=-$(radius)]

# Garbage collection
scoreboard players reset .ray_radius_max buffer
