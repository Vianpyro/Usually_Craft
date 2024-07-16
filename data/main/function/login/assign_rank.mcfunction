scoreboard players add @s role 0
execute if score @s role matches 0 run scoreboard players set @s role 1
execute if score @s role matches 1 run return run team join default
execute if score @s role matches 2 run return run team join verified
execute if score @s role matches 10 run return run team join vip
execute if score @s role matches 20 run return run team join mvp
execute if score @s role matches 50 run return run team join helper
execute if score @s role matches 60 run return run team join moderator
execute if score @s role matches 100 run return run team join admin
return fail
