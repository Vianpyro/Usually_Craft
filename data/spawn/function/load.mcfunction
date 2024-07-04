# Create the scoreboards
scoreboard objectives add join minecraft.custom:minecraft.leave_game

# Create the teams
team add admin
team add default
team add helper
team add mvp
team add moderator
team add verified
team add vip

# Set the teams display
team modify admin prefix {"text":"Admin ","color":"red"}
team modify default prefix ["",{"text":"[","color":"dark_gray"},{"text":"?","color":"gray","bold":true},{"text":"] ","color":"dark_gray"}]
team modify helper prefix {"text":"Helper ","color":"green"}
team modify mvp prefix {"text":"MVP ","color":"gold"}
team modify moderator prefix {"text":"Mod ","color":"blue"}
team modify vip prefix {"text":"VIP ","color":"aqua"}

# Call the loops
schedule function spawn:loops/1_second 1s replace
schedule function spawn:loops/10_seconds 10s replace
schedule function spawn:loops/1_minute 60s replace
schedule function spawn:loops/10_minutes 600s replace

say Loaded!
