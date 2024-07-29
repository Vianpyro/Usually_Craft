# Count the number of completed easter eggs
execute as @a run function easter_egg:count_completed

# Summon a coins pouch
function easter_egg:spawn/coins_pouch/summon

# At the end reset the schedule
schedule function easter_egg:loop/1_minute 60s replace
