# Check if a player joins the server
execute as @a[scores={join=1..}] run function spawn:login/player_joined

# Walk-on boost
execute as @a if predicate spawn:in_spawn if predicate spawn:on_booster run function spawn:walk_on_boost
