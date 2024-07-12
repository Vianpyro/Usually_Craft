# Remove the old entities
$kill @e[tag=spawn_$(game)_npc]

$summon $(entity) ~ ~ ~ {NoAI:1b,Silent:1,Tags:["spawn_$(game)_npc"]}
$execute as @e[type=$(entity),tag=spawn_$(game)_npc] run function spawn:setup/game_entities/localization {"slot":$(slot)}
$execute as @e[type=$(entity),tag=spawn_$(game)_npc] at @s run function spawn:setup/game_entities/text_display {"tags":["spawn_$(game)_npc"],"text":'{"bold":true,"color":"dark_green","text":"$(game)"}'}
$execute as @e[type=$(entity),tag=spawn_$(game)_npc] at @s run summon minecraft:interaction ~ ~ ~ {width:1,height:2,Tags:["spawn_$(game)_npc"]}

# Add the go_to score to the interaction
$scoreboard players set @e[type=minecraft:interaction,tag=spawn_$(game)_npc] go_to $(go_to)
