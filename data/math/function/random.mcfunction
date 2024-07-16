$execute if score @s $(score) matches 1..513 run return run function math:random/l2/l2_0 {"score":"$(score)"}
$execute if score @s $(score) matches 513..1000 run return run function math:random/l2/l2_1 {"score":"$(score)"}
return fail
