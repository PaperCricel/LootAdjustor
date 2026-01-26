
data modify storage lalib:temp is_loaded.containers set from storage lalib:temp curr_storage.containers
function lalib:sys/return_loots/is_loaded/loop with storage lalib:temp is_loaded.containers[0]