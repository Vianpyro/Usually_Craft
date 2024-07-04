# Check if a player joins the server
execute as @a[scores={join=1..}] run function spawn:login/player_joined
execute as @a[advancements={spawn:root=false}] run function spawn:login/first_time_joined
