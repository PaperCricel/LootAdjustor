
$forceload add $(x) $(z)

data remove storage lalib:temp forceload.containers[0]
execute if data storage lalib:temp forceload.containers[0] run function lalib:import_loots/forceload/loop with storage lalib:temp forceload.containers[0]

# clear
data remove storage lalib:temp forceload