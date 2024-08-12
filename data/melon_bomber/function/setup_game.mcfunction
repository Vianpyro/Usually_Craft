# Prevent players from moving
item replace entity @a armor.head with oak_button
item modify entity @a armor.head main:immobilize

# Start the game
schedule function melon_bomber:start_game 1s replace
