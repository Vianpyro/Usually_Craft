# Count the number of completed easter eggs
execute as @a run function easter_egg:count_completed

# At the end reset the schedule
schedule function easter_egg:loop/1_minute 60s replace
