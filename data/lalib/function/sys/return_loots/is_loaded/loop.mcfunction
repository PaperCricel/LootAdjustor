
$execute unless loaded $(x) $(y) $(z) run return run schedule function lalib:sys/return_loots/is_loaded/await 1t

data remove storage lalib:temp is_loaded.containers[0]
execute if data storage lalib:temp is_loaded.containers[0] run return run function lalib:sys/return_loots/is_loaded/loop with storage lalib:temp is_loaded.containers[0]

# clear
data remove storage lalib:temp is_loaded
function lalib:sys/return_loots/return/use