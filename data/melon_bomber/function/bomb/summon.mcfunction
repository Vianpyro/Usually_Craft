playsound minecraft:entity.tnt.primed block @a ~ ~ ~

# Center bomb on the block
execute align xz positioned ~ ~ ~ run summon minecraft:block_display ~ 0 ~ {block_state:{Name:"minecraft:melon"},Tags:["melon_bomb","melon_bomb_spawn"]}
scoreboard players operation @e[type=minecraft:block_display,tag=melon_bomb_spawn,limit=1,sort=nearest] melon_bomber_power = @p[scores={melon_bomber_place_bomb=1..}] melon_bomber_power
tag @e[type=minecraft:block_display,tag=melon_bomb_spawn,limit=1,sort=nearest] remove melon_bomb_spawn
scoreboard players reset @p[scores={melon_bomber_place_bomb=1..}] melon_bomber_place_bomb
execute if entity @s[type=!minecraft:player] run kill @s
