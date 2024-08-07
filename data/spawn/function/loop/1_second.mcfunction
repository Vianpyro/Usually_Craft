# Protect the players at the spawn
execute as @a[gamemode=!spectator] if predicate spawn:in_area unless items entity @s armor.head oak_button run function spawn:protection

# Un-walk on the boosters
execute as @a[advancements={spawn:walk_on_boost=true}] unless predicate spawn:on_booster run advancement revoke @s only spawn:walk_on_boost

# At the end reset the schedule
schedule function spawn:loop/1_second 1s replace
