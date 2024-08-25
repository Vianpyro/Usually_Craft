# Score for the player's health
scoreboard objectives add health health

# Score for teleporting to a location
scoreboard objectives add go_to trigger

# Score for all kind of values
scoreboard objectives add buffer dummy

# Money related scoreboards
scoreboard objectives add money dummy
scoreboard objectives add purse dummy
scoreboard objectives add total_money dummy

# Score used to detect when a player joins the server
scoreboard objectives add join minecraft.custom:minecraft.leave_game

# Statistic for the total time played
scoreboard objectives add play_time minecraft.custom:minecraft.play_time

# Score for the players roles
scoreboard objectives add role dummy

# Score for the game reward details
scoreboard objectives add game_reward dummy

# Daily reward related scoreboards
scoreboard objectives add daily_reward_count dummy
scoreboard objectives add daily_reward_last_day dummy
scoreboard objectives add daily_reward_streak dummy
scoreboard objectives add daily_reward_streak_max dummy

# Setup the verification informations scoreboard
scoreboard objectives add verification_informations dummy
scoreboard objectives modify verification_informations displayname {"text":"Please verify your account:","color":"red","bold":true}
scoreboard objectives modify verification_informations numberformat blank
scoreboard objectives setdisplay sidebar.team.gray verification_informations
scoreboard players set Discord: verification_informations 1
scoreboard players set https://discord.gg/S75Pd3hgMb verification_informations 0
