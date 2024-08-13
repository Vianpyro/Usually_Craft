# Spread the players
spreadplayers 1024 1024 8 30 under 2 false @a[predicate=melon_bomber:in_area]

# Create a hole in the ground where the players start
execute as @a[predicate=melon_bomber:in_area] at @s run fill ~-1 0 ~-1 ~1 2 ~1 air replace spruce_planks

# Allow players to move
item replace entity @a[predicate=melon_bomber:in_area] armor.head with oak_button
item modify entity @a[predicate=melon_bomber:in_area] armor.head main:area_protection
