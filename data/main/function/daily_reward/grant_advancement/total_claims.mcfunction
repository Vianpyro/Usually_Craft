execute if score @s daily_reward_count matches ..4 run return fail
execute if score @s daily_reward_count matches 5.. run advancement grant @s only main:daily_reward/total_claims/level_1
execute if score @s daily_reward_count matches 15.. run advancement grant @s only main:daily_reward/total_claims/level_2
execute if score @s daily_reward_count matches 50.. run advancement grant @s only main:daily_reward/total_claims/level_3
execute if score @s daily_reward_count matches 150.. run advancement grant @s only main:daily_reward/total_claims/level_4
execute if score @s daily_reward_count matches 500.. run advancement grant @s only main:daily_reward/total_claims/level_5
