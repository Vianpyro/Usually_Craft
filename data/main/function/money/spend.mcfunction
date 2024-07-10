# Revoke the advancement
advancement revoke @s only main:money/spend_purse

scoreboard players operation @s money += @s purse
execute if score @s money matches ..-1 run return run function main:money/poor

# If the player has enough money, spend it
execute if score @s money matches 0.. run tellraw @s ["",{"text":"You have ","color":"red"},{"score":{"name":"@s","objective":"purse"},"color":"gold"},{"text":" u-coin(s).","color":"red"}]

# Reset the purse
scoreboard players set @s purse 0
