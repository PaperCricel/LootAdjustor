
tag @s add lalib.return_loots.user
$data modify storage lalib:temp curr_storage set from storage lalib:loot_storage $(id)

function lalib:sys/return_loots/forceload/use
schedule function lalib:sys/return_loots/is_loaded/use 1t