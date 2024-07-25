$scoreboard players set .a buffer $(a)
$scoreboard players set .b buffer $(b)
$execute if score .a buffer < .b buffer run return $(b)
$return $(a)
