# Create the scores
function issue:setup/scores

# Call the loop
schedule function issue:loop/1_minute 60s replace
