## usage : load container properly (maybe)

$function lalib:manage/load/specific/try_setblock {id:$(id)}
$function lalib:manage/load/specific/$(id)

function lalib:manage/load/setblock/3
data modify block ~ ~ ~ components."minecraft:custom_data".lalib set from storage lalib:temp block
data modify block ~ ~ ~ components."minecraft:custom_data".lalib.id set from storage lalib:temp curr_storage.id