
$forceload add $(x) $(z)

data remove storage lalib:temp forceload.containers[0]
execute if data storage lalib:temp forceload.containers[0] run function lalib:sys/return_loots/forceload/loop with storage lalib:temp forceload.containers[0]

# clear
data remove storage lalib:temp forceload