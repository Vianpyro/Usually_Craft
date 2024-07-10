tellraw @s ["",{"text":"You have ","color":"aqua"},{"score":{"name":"@s","objective":"money"},"color":"gold"},{"text":" u-coins.","color":"aqua"}]

# If the total earned money is different from the actual money, display the total earned money
execute if score @s total_money > @s money run tellraw @s ["",{"text":"In total you have earned ","color":"aqua"},{"score":{"name":"@s","objective":"total_money"},"color":"gold"},{"text":" u-coins.","color":"aqua"}]
