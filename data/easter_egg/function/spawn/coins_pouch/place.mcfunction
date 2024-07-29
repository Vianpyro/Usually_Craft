spreadplayers ~ ~ 0 300 under 140 false @s
execute at @s unless block ~ ~-.5 ~ #main:coin_valid_spawn run return run function easter_egg:spawn/coins_pouch/place
scoreboard players set @s go_to 6
execute at @s run summon item_display ~ ~.5 ~ {item_display:"head",Tags:["ground_coin_pouch"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzVjOWNjY2Y2MWE2ZTYyODRmZTliYmU2NDkxNTViZTRkOWNhOTZmNzhmZmNiMjc5Yjg0ZTE2MTc4ZGFjYjUyMiJ9fX0"}]}}}}
tag @s remove ground_coin_pouch_placing
