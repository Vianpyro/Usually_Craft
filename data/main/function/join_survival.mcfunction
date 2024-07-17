function main:message/notice {"source":"Spawn","message":'"text":"Use the command `/survival` to join the survival server!","color":"aqua","clickEvent":{"action":"run_command","value":"/survival"},"hoverEvent":{"action":"show_text","contents":"/survival"}'}
execute at @s run playsound minecraft:entity.item.pickup ambient @s ~ ~ ~ 1 1
