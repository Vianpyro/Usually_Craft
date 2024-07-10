tellraw @s {"text":"Use the command `/survival` to join the survival server!","color":"aqua","clickEvent":{"action":"run_command","value":"/survival"},"hoverEvent":{"action":"show_text","contents":"/survival"}}
execute at @s run playsound minecraft:entity.villager.yes neutral @s ~ ~ ~ 1 1.05
