execute if score @s daily_reward_streak matches ..2 run return fail
execute if score @s daily_reward_streak matches 3.. run advancement grant @s only main:daily_reward/consecutive_claims/level_1
execute if score @s daily_reward_streak matches 7.. run advancement grant @s only main:daily_reward/consecutive_claims/level_2
execute if score @s daily_reward_streak matches 14.. run advancement grant @s only main:daily_reward/consecutive_claims/level_3
execute if score @s daily_reward_streak matches 30.. run advancement grant @s only main:daily_reward/consecutive_claims/level_4
execute if score @s daily_reward_streak matches 365.. run advancement grant @s only main:daily_reward/consecutive_claims/level_5
