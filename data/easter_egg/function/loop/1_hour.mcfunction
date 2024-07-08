# Open the demonic crypt
execute if loaded -13 -8 51 run function easter_egg:spawn/demonic_crypt/open_door

# At the end reset the schedule
schedule function easter_egg:loop/1_hour 3600s replace
