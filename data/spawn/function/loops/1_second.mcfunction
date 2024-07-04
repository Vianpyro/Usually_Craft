# Protect the players at the spawn
execute as @a[x=5,y=-8,z=11,distance=..1000] run function spawn:protection/effects

# At the end reset the schedule
schedule function spawn:loops/1_second 1s replace
