$scoreboard players set math_exclusive buffer $(max)
scoreboard players remove math_exclusive buffer 1

execute store result storage math:random max int 1 run scoreboard players get math_exclusive buffer
$data modify storage math:random min set value $(min)

schedule function math:random/collect_garbage 1s
return run function math:random with storage math:random
