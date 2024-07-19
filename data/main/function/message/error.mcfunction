$tellraw @s ["",{"text":"[$(source)] ","color":"gold"},{$(message),"color":"red"}]
execute at @s run playsound minecraft:entity.villager.no ambient @s ~ ~ ~ 1 1
