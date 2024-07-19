# Prevents the player from claiming the daily reward twice in the same day
execute if score @s last_daily_reward_day = current_day buffer run function main:message/generic/already_claimed_daily_reward
execute if score @s last_daily_reward_day = current_day buffer run return fail

# Set the last claimed day to the current day
scoreboard players operation @s last_daily_reward_day = current_day buffer

# Give the player the daily reward
scoreboard players add @s purse 42

# Tell the player that they have claimed the daily reward
function main:message/generic/claim_daily_reward
