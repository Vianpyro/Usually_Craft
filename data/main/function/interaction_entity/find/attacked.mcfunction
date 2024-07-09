scoreboard players set interact_go_to test 0
execute on attacker store result score interact_go_to test if entity @s[tag=this]

execute if score interact_go_to test matches 1 store result score @a[limit=1,tag=this] go_to run scoreboard players get @s go_to

execute if score interact_go_to test matches 1 run data remove entity @s attack
