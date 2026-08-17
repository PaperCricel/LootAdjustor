
$setblock ~ ~ ~ $(id)$(facing)

# block data
data modify storage lalib:temp restore set from storage lalib:temp current.block
data remove storage lalib:temp restore.id
data remove storage lalib:temp restore.x
data remove storage lalib:temp restore.y
data remove storage lalib:temp restore.z
data remove storage lalib:temp restore.facing
data remove storage lalib:temp restore.sid
data modify block ~ ~ ~ {} merge from storage lalib:temp restore
data remove storage lalib:temp restore

# containers data
execute if function lalib:controller/r_click/place/is_same/use run return fail

$data modify storage lalib:temp curr_containers set from storage lalib:loot_storage $(sid).containers[{x:$(x),y:$(y),z:$(z)}]
data modify storage lalib:temp curr_containers.x set from block ~ ~ ~ x
data modify storage lalib:temp curr_containers.y set from block ~ ~ ~ y
data modify storage lalib:temp curr_containers.z set from block ~ ~ ~ z
$data modify storage lalib:loot_storage $(sid).containers[{x:$(x),y:$(y),z:$(z)}] set from storage lalib:temp curr_containers

$data remove storage lalib:loot_storage $(sid).containers[{x:$(x),y:$(y),z:$(z)}]
data remove storage lalib:temp curr_containers
