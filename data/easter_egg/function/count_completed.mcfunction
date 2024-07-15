# Reset the easter egg completion count to 0
scoreboard players set @s easter_egg_completed 0

# Count the number of completed easter eggs
function easter_egg:count_completed/spawn

# Return the number of completed easter eggs
return run scoreboard players get @s easter_egg_completed
