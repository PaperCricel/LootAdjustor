
$setblock ~ ~ ~ $(id)$(facing)
data modify block ~ ~ ~ Items set from storage lalib:temp current.block.Items
data modify block ~ ~ ~ components set from storage lalib:temp current.block.components

# containers data
execute if function lalib:controller/r_click/place/is_same/use run return fail

$data modify storage lalib:temp curr_containers set from storage lalib:loot_storage white.containers[{x:$(x),y:$(y),z:$(z)}]
data modify storage lalib:temp curr_containers.x set from block ~ ~ ~ x
data modify storage lalib:temp curr_containers.y set from block ~ ~ ~ y
data modify storage lalib:temp curr_containers.z set from block ~ ~ ~ z
$data modify storage lalib:loot_storage white.containers[{x:$(x),y:$(y),z:$(z)}] set from storage lalib:temp curr_containers

$data remove storage lalib:loot_storage white.containers[{x:$(x),y:$(y),z:$(z)}]
data remove storage lalib:temp curr_containers