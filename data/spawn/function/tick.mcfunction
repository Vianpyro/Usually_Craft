# Check if a player joins the server
execute as @a[scores={join=1..}] run function spawn:login/player_joined

# Walk-on boost
execute as @a[advancements={spawn:walk_on_boost=true}] unless predicate spawn:on_booster run advancement revoke @s only spawn:walk_on_boost
