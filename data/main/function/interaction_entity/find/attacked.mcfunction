scoreboard players set interact_action buffer 0
execute on attacker store result score interact_action buffer if entity @s[tag=this]

execute if score interact_action buffer matches 1 store result score @a[limit=1,tag=this] action run scoreboard players get @s action

execute if score interact_action buffer matches 1 run data remove entity @s attack
