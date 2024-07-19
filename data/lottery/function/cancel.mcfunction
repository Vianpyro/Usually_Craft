execute as @a run function main:message/error {"source":"Lottery","message":'"text":"The lottery has been canceled due to insufficient participation."'}
$scoreboard players add $(name) purse $(refund)
function lottery:collect_garbage
