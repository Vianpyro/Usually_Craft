# Prevents the player from claiming the daily reward twice in the same day
execute if score @s last_daily_reward_day = current_day buffer run function main:message/generic/already_claimed_daily_reward
execute if score @s last_daily_reward_day = current_day buffer run return fail

# Reset the daily reward streak if the player missed a day
scoreboard players operation .last_daily_reward_day buffer = @s last_daily_reward_day
scoreboard players add .last_daily_reward_day buffer 1
execute unless score .last_daily_reward_day buffer = current_day buffer run scoreboard players set @s daily_reward_streak 0

# Give the player the daily reward
scoreboard players add @s purse 42

# Update the player's daily reward stats
scoreboard players add @s daily_reward_count 1
scoreboard players add @s daily_reward_streak 1
scoreboard players operation @s last_daily_reward_day = current_day buffer

# Tell the player that they have claimed the daily reward
function main:message/generic/claim_daily_reward
