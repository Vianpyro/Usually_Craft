bossbar add spawn:news {"text":"Loading..."}
bossbar set spawn:news max 1
bossbar set spawn:news value 1
bossbar set spawn:news color pink
bossbar set spawn:news name {"text":"NEW GAME! Type `/bid <amount>` to play!","color":"yellow","bold":true}
bossbar set spawn:news style progress
bossbar set spawn:news visible true
bossbar set spawn:news players @a[predicate=spawn:in_area]
