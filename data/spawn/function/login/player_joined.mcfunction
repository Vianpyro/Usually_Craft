function spawn:teleport_to_spawn
scoreboard players set @s join 0

# Welcome banner
title @s times 20 100 20
title @s subtitle {"text":"Type `/survival` to join the survival world","color":"dark_green"}
title @s title ["",{"text":"Welcome ","color":"gold"},{"selector":"@s","color":"dark_purple"},{"text":"!","color":"gold"}]

say Hello!
