# Create the scoreboards
scoreboard objectives add join minecraft.custom:minecraft.leave_game
scoreboard objectives add play_time minecraft.custom:minecraft.play_time

# Setup the teams
function spawn:setup/teams

# Call the loops
schedule function spawn:loops/1_second 1s replace
schedule function spawn:loops/10_seconds 10s replace
schedule function spawn:loops/1_minute 60s replace
schedule function spawn:loops/10_minutes 600s replace

say Loaded!
