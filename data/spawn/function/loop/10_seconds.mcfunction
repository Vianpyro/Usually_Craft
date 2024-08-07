# Protect the players at the spawn
execute as @a[gamemode=!spectator] if predicate spawn:in_area unless data entity @s {foodLevel:20} run effect give @s minecraft:saturation 1 255 true

# At the end reset the schedule
schedule function spawn:loop/10_seconds 10s replace

# Update the bossbar visibility
bossbar set spawn:news players @a[predicate=spawn:in_area]
