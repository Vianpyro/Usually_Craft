fill -13 -9 51 -13 -8 51 minecraft:air replace iron_door
setblock -13 -9 51 minecraft:iron_door[half=lower,facing=west,open=true]
setblock -13 -8 51 minecraft:iron_door[half=upper,facing=west,open=true]
playsound minecraft:entity.bat.ambient ambient @a -13 -8 51 1

# Close the demonic crypt after 60 seconds
schedule function easter_egg:spawn/demonic_crypt/close_door 60s replace
