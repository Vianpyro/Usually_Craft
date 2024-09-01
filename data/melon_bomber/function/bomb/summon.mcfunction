playsound minecraft:entity.tnt.primed block @a ~ ~ ~

# Center bomb on the block
execute align xz positioned ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:melon"},Tags:["melon_bomb"]}
scoreboard players operation @e[type=minecraft:block_display,tag=melon_bomb,limit=1] melon_bomber_power = @s melon_bomber_power
