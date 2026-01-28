
data modify storage lalib:temp current.block set from block ~ ~ ~

# for management area
execute if data storage lalib:temp current.block.components.minecraft:custom_data.lalib run function lalib:controller/block/manage

data modify storage lalib:temp current.x set from storage lalib:temp current.block.x
data modify storage lalib:temp current.y set from storage lalib:temp current.block.y
data modify storage lalib:temp current.z set from storage lalib:temp current.block.z

# block
function lalib:controller/block/specific/use