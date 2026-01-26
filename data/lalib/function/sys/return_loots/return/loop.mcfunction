
$execute positioned $(x) $(y) $(z) positioned ~ ~0.5 ~ run function lalib:sys/player/find_block/fx/success
$data modify block $(x) $(y) $(z) Items set from storage lalib:temp return.containers[0].Items
$forceload remove $(x) $(z)

data remove storage lalib:temp return.containers[0]
execute if data storage lalib:temp return.containers[0] run return run function lalib:sys/return_loots/return/loop with storage lalib:temp return.containers[0]

# clear
data remove storage lalib:temp return
data remove storage lalib:temp curr_storage
function lalib:sys/return_loots/success