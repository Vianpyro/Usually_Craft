# Revoke the advancement
advancement revoke @s only main:money/recieve_purse

execute if score @s purse matches 1 run tellraw @s ["",{"text":"You have obtained ","color":"green"},{"score":{"name":"@s","objective":"purse"},"color":"gold"},{"text":" u-coin.","color":"green"}]
execute if score @s purse matches 2.. run tellraw @s ["",{"text":"You have obtained ","color":"green"},{"score":{"name":"@s","objective":"purse"},"color":"gold"},{"text":" u-coins.","color":"green"}]
scoreboard players operation @s money += @s purse
scoreboard players operation @s total_money += @s purse

# Reset the purse
scoreboard players set @s purse 0
