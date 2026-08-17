
scoreboard players set #outdated lalib.main 0
data modify storage lalib:temp return.containers set from storage lalib:temp curr_storage.containers
function lalib:import_loots/return/loop with storage lalib:temp return.containers[0]