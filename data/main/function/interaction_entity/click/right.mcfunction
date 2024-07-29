# Revoke the advancement
advancement revoke @s only main:interaction_entity/right_click

tag @s add this
execute as @n[type=minecraft:interaction,distance=..6,limit=1] run function main:interaction_entity/find/targeted
tag @s remove this
