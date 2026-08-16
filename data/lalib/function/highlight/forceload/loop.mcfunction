
$execute store success score #forceload lalib.main run forceload query $(x) $(z)
$execute if score #forceload lalib.main matches 0 run forceload add $(x) $(z)
$execute if score #forceload lalib.main matches 0 run data modify storage lalib:temp highlight.added append value {x:$(x),z:$(z)}
$data modify storage lalib:temp highlight.pos append value {x:$(x),y:$(y),z:$(z)}

data remove storage lalib:temp highlight.queue[0]
execute if data storage lalib:temp highlight.queue[0] run return run function lalib:highlight/forceload/loop with storage lalib:temp highlight.queue[0]

# clear
scoreboard players reset #forceload lalib.main
data remove storage lalib:temp highlight.queue
