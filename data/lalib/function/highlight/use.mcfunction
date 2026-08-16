
$data modify storage lalib:temp highlight.id set value "$(id)"
$data modify storage lalib:temp highlight.mode set value "$(mode)"
$data modify storage lalib:temp highlight.queue set from storage lalib:loot_storage $(id).containers

function lalib:highlight/forceload/loop with storage lalib:temp highlight.queue[0]
schedule function lalib:highlight/is_loaded/use 1t
