
$execute unless data storage lalib:loot_storage $(id) run return run function lalib:player/info/not_found
$execute unless data storage lalib:loot_storage $(id).containers[0] run return run function lalib:player/info/no_containers_highlight
execute if data storage lalib:temp highlight run return run function lalib:player/info/highlight_busy

$data remove storage lalib:loot_storage $(id).highlight
tag @s add lalib.highlight.user
$function lalib:highlight/use {id:"$(id)",mode:"kill"}
