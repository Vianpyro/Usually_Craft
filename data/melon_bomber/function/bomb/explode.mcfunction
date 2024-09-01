execute store result storage melon_bomber:explosion radius int 1 run scoreboard players get @s melon_bomber_power
execute at @s positioned ~ ~.5 ~ run function melon_bomber:explosion with storage melon_bomber:explosion
kill @s
