# Open the demonic crypt
execute if loaded -13 -8 51 run function spawn:easter_egg/demonic_crypt/open_door

# Close the demonic crypt after 60 seconds
schedule function spawn:easter_egg/demonic_crypt/close_door 60s replace

# At the end reset the schedule
schedule function spawn:loops/1_hour 3600s replace
