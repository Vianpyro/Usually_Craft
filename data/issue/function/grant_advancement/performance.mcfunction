execute if score @s find_issue_perf matches ..0 run return fail
execute if score @s find_issue_perf matches 1.. run advancement grant @s only issue:performance/level_1
execute if score @s find_issue_perf matches 15.. run advancement grant @s only issue:performance/level_2
execute if score @s find_issue_perf matches 50.. run advancement grant @s only issue:performance/level_3
