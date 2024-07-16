# Check if a player joins the server
execute as @a[scores={join=1..}] run function main:login/player_joined
