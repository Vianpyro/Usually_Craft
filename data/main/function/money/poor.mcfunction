tellraw @s {"text":"You need more money.","color":"red"}
scoreboard players operation @s money -= @s purse

# Reset the purse
scoreboard players set @s purse 0
