## usage : load container properly (maybe)

$function lalib:sys/load_manage/specific_block/try_setblock {id:$(id)}
$function lalib:sys/load_manage/specific_block/$(id)

function lalib:sys/load_manage/setblock/3
data modify block ~ ~ ~ components."minecraft:custom_data".lalib set from storage lalib:temp block