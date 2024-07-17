# args: entity, source, sub_source, slot, go_to

# Remove the old entities
$kill @e[tag=$(source)_$(sub_source)_npc]

$summon $(entity) ~ ~ ~ {NoAI:1b,Silent:1,Tags:["$(source)_$(sub_source)_npc"],PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1}]}
$execute as @e[type=$(entity),tag=$(source)_$(sub_source)_npc] run function main:npc/localization {"source":$(source),"slot":$(slot)}
$execute as @e[type=$(entity),tag=$(source)_$(sub_source)_npc] at @s run function main:npc/text_display {"tags":["$(source)_$(sub_source)_npc"],"text":'{"bold":true,"color":"dark_green","text":"$(sub_source)"}'}
$execute as @e[type=$(entity),tag=$(source)_$(sub_source)_npc] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["$(source)_$(sub_source)_npc"]}

# Size the interaction box
$execute as @e[type=minecraft:interaction,tag=$(source)_$(sub_source)_npc] run function main:npc/interaction with storage main:npc_size_$(entity)

# Add the go_to score to the interaction
$scoreboard players set @e[type=minecraft:interaction,tag=$(source)_$(sub_source)_npc] go_to $(go_to)
