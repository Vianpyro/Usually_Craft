# Score for teleporting to a location
scoreboard objectives add go_to trigger

# Score for all kind of values
scoreboard objectives add buffer dummy

# Actual money count
scoreboard objectives add money dummy

# Money to be added
scoreboard objectives add purse dummy

# Score for the total money count statistic
scoreboard objectives add total_money dummy

# Score used to detect when a player joins the server
scoreboard objectives add join minecraft.custom:minecraft.leave_game

# Statistic for the total time played
scoreboard objectives add play_time minecraft.custom:minecraft.play_time

# Score for the players roles
scoreboard objectives add role dummy

# Score for the game reward details
scoreboard objectives add game_reward dummy

# Score to record the last claimed day reward
scoreboard objectives add last_daily_reward_day dummy

# Score to count the daily reward
scoreboard objectives add daily_reward_count dummy

# Score to count the daily reward streak
scoreboard objectives add daily_reward_streak dummy

# Setup the verification informations scoreboard
scoreboard objectives add verification_informations dummy
scoreboard objectives modify verification_informations displayname {"text":"Please verify your account:","color":"red","bold":true}
scoreboard objectives modify verification_informations numberformat blank
scoreboard objectives setdisplay sidebar.team.gray verification_informations
scoreboard players set Discord: verification_informations 1
scoreboard players set https://discord.gg/S75Pd3hgMb verification_informations 0
