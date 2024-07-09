# Kill the previous entities
$kill @e[type=!player,x=$(x).5,y=$(y),z=$(z).5,distance=..1.5]

# Spawn the new entities
$summon minecraft:villager $(x).5 $(y) $(z).5 {Profession:0,NoAI:1b,PersistenceRequired:0b,Silent:1,Invulnerable:1,Age:0,Rotation:[-90F,0F]}
$summon minecraft:interaction $(x).5 $(y) $(z).5 {width:1,height:2}
$summon minecraft:text_display $(x).5 $(y) $(z).5 {billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.2f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"dark_green","text":"Survival"}',background:0}

# Add the go_to score to the interaction
$scoreboard players set @e[type=minecraft:interaction,x=$(x).5,y=$(y),z=$(z).5,distance=..1.5] go_to 1
