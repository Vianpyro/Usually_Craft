$execute as $(player) if entity @s[team=default] run return run scoreboard players set $(player) role 1
$execute as $(player) if entity @s[team=verified] run return run scoreboard players set $(player) role 2
$execute as $(player) if entity @s[team=vip] run return run scoreboard players set $(player) role 10
$execute as $(player) if entity @s[team=mvp] run return run scoreboard players set $(player) role 20
$execute as $(player) if entity @s[team=helper] run return run scoreboard players set $(player) role 50
$execute as $(player) if entity @s[team=moderator] run return run scoreboard players set $(player) role 60
$execute as $(player) if entity @s[team=admin] run return run scoreboard players set $(player) role 100
return fail
