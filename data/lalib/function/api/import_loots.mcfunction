
$execute unless data storage lalib:loot_storage $(id).containers[0] run return run function lalib:player/info/no_containers_return

tag @s add lalib.import_loots.user
$data modify storage lalib:temp curr_storage set from storage lalib:loot_storage $(id)

function lalib:import_loots/forceload/use
schedule function lalib:import_loots/is_loaded/use 1t