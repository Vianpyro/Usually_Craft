# Protect the players at the spawn
execute as @a[gamemode=!spectator] if predicate spawn:in_spawn unless items entity @s armor.head oak_button run function spawn:protection

# At the end reset the schedule
schedule function spawn:loop/1_second 1s replace
