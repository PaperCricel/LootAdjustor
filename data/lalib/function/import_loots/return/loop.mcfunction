
$execute positioned $(x) $(y) $(z) run function lalib:import_loots/return/block
$forceload remove $(x) $(z)

data remove storage lalib:temp return.containers[0]
execute if data storage lalib:temp return.containers[0] run return run function lalib:import_loots/return/loop with storage lalib:temp return.containers[0]

# clear
function lalib:import_loots/success
data remove storage lalib:temp return
data remove storage lalib:temp curr_storage