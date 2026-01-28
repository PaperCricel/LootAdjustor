
data modify storage lalib:temp current.id set from storage lalib:temp current.block.components.minecraft:custom_data.lalib.id
data modify storage lalib:temp current.block.x set from storage lalib:temp current.block.components.minecraft:custom_data.lalib.x
data modify storage lalib:temp current.block.y set from storage lalib:temp current.block.components.minecraft:custom_data.lalib.y
data modify storage lalib:temp current.block.z set from storage lalib:temp current.block.components.minecraft:custom_data.lalib.z

data remove storage lalib:temp current.block.components.minecraft:custom_data.lalib
execute if data storage lalib:temp current.block.components{"minecraft:custom_data":{}} run data remove storage lalib:temp current.block.components.minecraft:custom_data