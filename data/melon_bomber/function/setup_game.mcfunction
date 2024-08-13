# Prevent players from moving
item replace entity @a[predicate=melon_bomber:in_area] armor.head with oak_button
item modify entity @a[predicate=melon_bomber:in_area] armor.head main:immobilize

# Start the game
schedule function melon_bomber:start_game 2s replace
