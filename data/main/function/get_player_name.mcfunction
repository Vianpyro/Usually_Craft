# Store the player's name
loot replace block 8 153 0 container.0 loot main:player_head
data modify storage main:buffer name set from block 8 153 0 Items[0].components.minecraft:profile.name

# Store the player's UUID
data modify storage main:buffer UUID set from entity @s UUID
