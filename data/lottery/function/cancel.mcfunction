execute as @a run function main:message/error {"source":"Lottery","message":'"text":"The lottery has been canceled due to insufficient participation."'}
$scoreboard players add $(name) purse 10
function lottery:collect_garbage
