
$execute unless data storage lalib:loot_storage $(id).containers[0] run return run function lalib:player/info/no_containers_load

$data modify storage lalib:temp curr_storage set from storage lalib:loot_storage $(id)
execute store result score #max_width lalib.main run data get storage lalib:temp curr_storage.management.max_width
scoreboard players set #curr_length lalib.main 0

function lalib:manage/load/rarity/check
function lalib:manage/load/interpret with storage lalib:temp curr_storage.management

data remove storage lalib:temp curr_storage
