# Score for teleporting to a location
scoreboard objectives add go_to trigger

# Score for all value tests
scoreboard objectives add test dummy

# Call the loops
schedule function main:loop/1_second 1s replace
