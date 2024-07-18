function main:daily_reward/time_before_refresh

# At the end reset the schedule
schedule function main:loop/1_minute 60s replace
