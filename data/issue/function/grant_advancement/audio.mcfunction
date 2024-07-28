execute if score @s find_issue_audio matches ..0 run return fail
execute if score @s find_issue_audio matches 1.. run advancement grant @s only issue:audio/level_1
execute if score @s find_issue_audio matches 15.. run advancement grant @s only issue:audio/level_2
execute if score @s find_issue_audio matches 50.. run advancement grant @s only issue:audio/level_3
