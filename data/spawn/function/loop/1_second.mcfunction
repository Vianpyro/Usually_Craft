# Protect the players at the spawn
execute as @a[x=5,y=-8,z=11,distance=..1000,gamemode=adventure] run function spawn:protection/effects

# At the end reset the schedule
schedule function spawn:loop/1_second 1s replace
