# Create the teams
team add admin
team add default
team add helper
team add mvp
team add moderator
team add verified
team add vip

# Set the default team color to gray
team modify default color gray

# Set the teams display
team modify admin prefix {"text":"Admin ","color":"red"}
team modify default prefix ["",{"text":"[","color":"dark_gray"},{"text":"?","color":"gray","bold":true},{"text":"] ","color":"dark_gray"}]
team modify helper prefix {"text":"Helper ","color":"green"}
team modify mvp prefix {"text":"MVP ","color":"gold"}
team modify moderator prefix {"text":"Mod ","color":"blue"}
team modify vip prefix {"text":"VIP ","color":"aqua"}

# Remove collisions
team modify admin collisionRule never
team modify default collisionRule never
team modify helper collisionRule never
team modify mvp collisionRule never
team modify moderator collisionRule never
team modify verified collisionRule never
team modify vip collisionRule never
