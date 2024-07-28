execute if score @s find_issue_gameplay matches ..0 run return fail
execute if score @s find_issue_gameplay matches 1.. run advancement grant @s only issue:gameplay/level_1
execute if score @s find_issue_gameplay matches 15.. run advancement grant @s only issue:gameplay/level_2
execute if score @s find_issue_gameplay matches 50.. run advancement grant @s only issue:gameplay/level_3
