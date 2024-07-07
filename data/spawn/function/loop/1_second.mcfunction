# Protect the players at the spawn
execute as @a[gamemode=adventure] if predicate spawn:in_spawn run function spawn:protection/effects

# At the end reset the schedule
schedule function spawn:loop/1_second 1s replace
