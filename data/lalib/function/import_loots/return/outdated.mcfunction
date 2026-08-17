
data modify storage lalib:temp outdated.id set from storage lalib:temp curr_storage.id
data modify storage lalib:temp outdated.x set from storage lalib:temp return.containers[0].x
data modify storage lalib:temp outdated.y set from storage lalib:temp return.containers[0].y
data modify storage lalib:temp outdated.z set from storage lalib:temp return.containers[0].z
function lalib:controller/storage/remove with storage lalib:temp outdated
data remove storage lalib:temp outdated

# orphaned marker
kill @e[type=item_display,tag=lalib.highlight,distance=..0.1]

scoreboard players add #outdated lalib.main 1

# fx
execute positioned ~ ~0.5 ~ run function lalib:player/find_block/fx/warning
