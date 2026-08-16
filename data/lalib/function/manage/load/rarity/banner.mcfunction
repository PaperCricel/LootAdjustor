
# if (!is_loaded) :
execute unless loaded ~ ~ ~ run return run execute as @a[tag=lalib.load.user,limit=1] run function lalib:player/info/manage_chunk_no_load

# elif (block & !management_container) :
execute unless block ~ ~ ~ #air unless function lalib:manage/load/is_container run return run execute as @a[tag=lalib.load.user,limit=1] run function lalib:player/info/manage_obstacle

$function lalib:manage/load/rarity/banner/$(n) {rot:$(rot)}

data modify block ~ ~ ~ components."minecraft:custom_data".lalib set from storage lalib:temp banner
data modify block ~ ~ ~ components."minecraft:custom_data".lalib.id set from storage lalib:temp curr_storage.id
