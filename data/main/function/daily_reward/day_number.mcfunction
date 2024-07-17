# Define the number of ticks in an IRL day
scoreboard players set ticks_in_a_day buffer 1728000

# Get the current gametime (in ticks)
execute store result score day buffer run time query gametime

# Return the day number
return run scoreboard players operation day buffer /= ticks_in_a_day buffer
