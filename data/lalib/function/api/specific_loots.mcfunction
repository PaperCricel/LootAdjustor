
$execute unless data storage lalib:loot_storage $(id) run return run function lalib:player/info/not_found
$execute unless data storage lalib:loot_storage $(id).containers[0] run return run function lalib:player/info/no_containers_specific
execute unless data entity @s Inventory[{Slot:1b}] run return run function lalib:player/info/no_reference

data remove storage lalib:temp specific
$data modify storage lalib:temp specific.id set value "$(id)"
function lalib:specific/reference

function lalib:specific/count/use with storage lalib:temp specific
function lalib:specific/dialog/show with storage lalib:temp specific
data remove storage lalib:temp specific
