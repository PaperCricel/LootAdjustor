## usage : load container properly (maybe)

$function lalib:sys/load_management/specific/try_setblock {id:$(id)}
$function lalib:sys/load_management/specific/$(id)

function lalib:sys/load_management/setblock/3
data modify block ~ ~ ~ components."minecraft:custom_data".lalib set from storage lalib:temp block