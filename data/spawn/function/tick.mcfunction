# Check if a player joins the server
execute as @a[scores={join=1..}] run function spawn:login/player_joined

# Walk-on boost
execute as @a at @s if block ~ ~-1 ~ minecraft:chiseled_quartz_block run function spawn:walk_on_boost
