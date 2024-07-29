# Call the loops
schedule function easter_egg:loop/1_second 1s replace
schedule function easter_egg:loop/1_minute 60s replace
schedule function easter_egg:loop/1_hour 3600s replace

# Create the scores
function easter_egg:setup/scores

# Set the maximum number of coins
scoreboard players set .max_ground_coins buffer 7
scoreboard players set .max_ground_coin_pouches buffer 1
