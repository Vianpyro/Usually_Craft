# Define the number of ticks in an IRL day, hour and minute
scoreboard players set ticks_in_a_day buffer 1728000
scoreboard players set ticks_in_an_hour buffer 72000
scoreboard players set ticks_in_a_minute buffer 1200
scoreboard players set remaining_hours buffer 24
scoreboard players set remaining_minutes buffer 60

# Get the current gametime (in ticks)
execute store result score gametime buffer run time query gametime

# Save the day number
scoreboard players operation current_day buffer = gametime buffer
scoreboard players operation current_day buffer /= ticks_in_a_day buffer

# Get the hour
scoreboard players operation gametime buffer %= ticks_in_a_day buffer
scoreboard players operation hours buffer = gametime buffer
scoreboard players operation hours buffer /= ticks_in_an_hour buffer
execute store result storage main:daily_reward_clock hours int 1 run scoreboard players add hours buffer 1
execute store result storage main:daily_reward_clock remaining_hours int 1 run scoreboard players operation remaining_hours buffer -= hours buffer

# Get the minute
scoreboard players operation gametime buffer %= ticks_in_an_hour buffer
scoreboard players operation minutes buffer = gametime buffer
scoreboard players operation minutes buffer /= ticks_in_a_minute buffer
scoreboard players add minutes buffer 1
execute store result storage main:daily_reward_clock remaining_minutes int 1 run scoreboard players operation remaining_minutes buffer -= minutes buffer

# Set the day time
function main:daily_reward/set_day_time with storage main:daily_reward_clock

# Collect garbage
scoreboard players reset ticks_in_a_day buffer
scoreboard players reset ticks_in_an_hour buffer
scoreboard players reset ticks_in_a_minute buffer
scoreboard players reset remaining_hours buffer
scoreboard players reset remaining_minutes buffer
scoreboard players reset gametime buffer
scoreboard players reset hours buffer
scoreboard players reset minutes buffer
