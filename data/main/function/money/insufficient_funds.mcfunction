function main:message/error {"source":"Server","message":'"text":"Oops! Looks like you do not have enough funds to complete this action!"'}
scoreboard players operation @s money -= @s purse

# Reset the purse
scoreboard players set @s purse 0
