# Close the demonic crypt easter egg door
execute if loaded -13 -9 51 if block -13 -9 51 minecraft:iron_door[open=true] run function spawn:easter_egg/demonic_crypt/close_door

# At the end reset the schedule
schedule function spawn:loops/1_minute 60s replace
