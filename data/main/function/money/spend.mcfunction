# Revoke the advancement
advancement revoke @s only main:money/spend_purse

function main:money/verify_funds

# If the player has enough money, spend it
execute if score @s purse matches 1.. run tellraw @s ["",{"text":"You spent ","color":"red"},{"score":{"name":"@s","objective":"purse"},"color":"gold"},{"text":" u-coin(s).","color":"red"}]
scoreboard players operation @s money -= @s purse

# Reset the purse
scoreboard players set @s purse 0
