$execute if entity $(player)[team=default] run return run scoreboard players set $(player) role 1
$execute if entity $(player)[team=verified] run return run scoreboard players set $(player) role 2
$execute if entity $(player)[team=vip] run return run scoreboard players set $(player) role 10
$execute if entity $(player)[team=mvp] run return run scoreboard players set $(player) role 20
$execute if entity $(player)[team=helper] run return run scoreboard players set $(player) role 50
$execute if entity $(player)[team=moderator] run return run scoreboard players set $(player) role 60
$execute if entity $(player)[team=admin] run return run scoreboard players set $(player) role 100
return fail
