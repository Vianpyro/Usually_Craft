# Reset the loto
function lottery:collect_garbage

# Call the loops
schedule function lottery:loop/1_minute 60s replace
