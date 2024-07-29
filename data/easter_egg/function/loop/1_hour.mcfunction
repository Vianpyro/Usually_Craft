# Refresh the ground coins and coins pouches
function easter_egg:spawn/coins/kill_all
function easter_egg:spawn/coins_pouch/kill_all

# At the end reset the schedule
schedule function easter_egg:loop/1_hour 3600s replace
