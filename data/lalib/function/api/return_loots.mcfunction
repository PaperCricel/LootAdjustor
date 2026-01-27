
$execute unless data storage lalib:loot_storage $(id).containers[0] run return run function lalib:sys/loot_storage/no_containers_return

tag @s add lalib.return_loots.user
$data modify storage lalib:temp curr_storage set from storage lalib:loot_storage $(id)

function lalib:sys/return_loots/forceload/use
schedule function lalib:sys/return_loots/is_loaded/use 1t