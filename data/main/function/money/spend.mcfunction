# Revoke the advancement
advancement revoke @s only main:money/spend_purse

execute unless function main:money/verify_funds run return run function main:money/insufficient_funds

# If the player has enough money, spend it
execute if score @s money matches 0.. run tellraw @s ["",{"text":"You spent ","color":"red"},{"score":{"name":"@s","objective":"purse"},"color":"gold"},{"text":" u-coin(s).","color":"red"}]
scoreboard players operation @s money -= @s purse

# Reset the purse
scoreboard players set @s purse 0
