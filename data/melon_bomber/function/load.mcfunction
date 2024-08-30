# Create the scores
function melon_bomber:setup/scores

# Kill all block_display entities in the area
execute as @e[type=block_display] at @s if predicate melon_bomber:in_area run kill @s

# Add the "melon roof"
summon block_display 1024 2 1024 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[34.5f,12f,34.5f],scale:[-70f,-15f,-70f]},block_state:{Name:"minecraft:melon"}}
