playsound minecraft:entity.tnt.primed block @a ~ ~ ~

# Center bomb on the block
execute align xz positioned ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:melon"},Tags:["melon_bomb"]}
