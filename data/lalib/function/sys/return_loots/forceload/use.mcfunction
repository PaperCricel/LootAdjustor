
say forceload
data modify storage lalib:temp forceload.containers set from storage lalib:temp curr_storage.containers
function lalib:sys/return_loots/forceload/loop with storage lalib:temp forceload.containers[0]