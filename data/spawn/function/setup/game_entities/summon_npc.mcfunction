# Remove the old entities
kill @e[tag=spawn_survival_npc]

$summon $(entity) ~ ~ ~ {NoAI:1b,Silent:1,Tags:["spawn_survival_npc"]}
$execute as @e[type=$(entity),tag=spawn_survival_npc] run function spawn:setup/game_entities/localization {"slot":$(slot)}
$execute as @e[type=$(entity),tag=spawn_survival_npc] at @s run function spawn:setup/game_entities/text_display {"tags":["spawn_survival_npc"],"text":'{"bold":true,"color":"dark_green","text":"Survival"}'}
$execute as @e[type=$(entity),tag=spawn_survival_npc] at @s run summon minecraft:interaction ~ ~ ~ {width:1,height:2,Tags:["spawn_survival_npc"]}

# Add the go_to score to the interaction
$scoreboard players set @e[type=minecraft:interaction,tag=spawn_survival_npc] go_to $(go_to)
