function main:message/error {"source":"Server","message":'"text":"You have already claimed your daily reward today!"'}
function main:message/generic/remaining_time with storage main:daily_reward_clock
execute at @s run playsound minecraft:entity.villager.no ambient @s ~ ~ ~ 1 1
