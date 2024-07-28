execute if score @s find_issue_visual matches ..0 run return fail
execute if score @s find_issue_visual matches 1.. run advancement grant @s only issue:visual/level_1
execute if score @s find_issue_visual matches 15.. run advancement grant @s only issue:visual/level_2
execute if score @s find_issue_visual matches 50.. run advancement grant @s only issue:visual/level_3
