# Revoke the advancement
advancement revoke @s only main:money/recieve_purse

tellraw @s ["",{"text":"You have obtained ","color":"green"},{"score":{"name":"@s","objective":"purse"},"color":"gold"},{"text":" u-coin(s).","color":"green"}]
scoreboard players operation @s money += @s purse
scoreboard players operation @s total_money += @s purse

# Reset the purse
scoreboard players set @s purse 0
