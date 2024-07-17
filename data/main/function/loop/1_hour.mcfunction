function main:daily_reward/day_number

# At the end reset the schedule
schedule function spawn:loop/1_hour 3600s replace
