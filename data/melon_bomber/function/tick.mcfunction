scoreboard players add @e[type=block_display,tag=melon_bomb] melon_bomber_bomb_timer 1
execute as @e[type=block_display,tag=melon_bomb,scores={melon_bomber_bomb_timer=60..}] run function melon_bomber:bomb/explode
