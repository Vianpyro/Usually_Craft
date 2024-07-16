execute store result score random_value buffer run random value -1073741823..1073741823
$scoreboard players operation random_value buffer %= @s $(score)
scoreboard players add random_value buffer 1
return run scoreboard players get random_value buffer
