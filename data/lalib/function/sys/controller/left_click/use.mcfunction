
execute unless data block ~ ~ ~ components.minecraft:custom_data.lalib.storage_id run return run function lalib:sys/controller/is_manage

data modify storage lalib:temp current.block set from block ~ ~ ~ components.minecraft:custom_data.lalib
data modify storage lalib:temp current.block.Items set from block ~ ~ ~ Items
execute store success score #pass lalib.main run function lalib:sys/controller/left_click/is_container with storage lalib:temp current.block

execute if score #pass lalib.main matches 1 run return run function lalib:sys/controller/left_click/save with storage lalib:temp current.block
function lalib:sys/controller/left_click/fail