
data modify storage lalib:temp manage set from storage lalib:temp current.block.components."minecraft:custom_data".lalib

data modify storage lalib:temp current.id set from storage lalib:temp manage.id
data modify storage lalib:temp current.block.x set from storage lalib:temp manage.x
data modify storage lalib:temp current.block.y set from storage lalib:temp manage.y
data modify storage lalib:temp current.block.z set from storage lalib:temp manage.z
execute if data storage lalib:temp manage.bid run data modify storage lalib:temp current.block.id set from storage lalib:temp manage.bid

# archived fields : the management copy never carried them
execute if data storage lalib:temp current.block.components run data remove storage lalib:temp current.block.components
execute if data storage lalib:temp manage.components run data modify storage lalib:temp current.block.components set from storage lalib:temp manage.components
function lalib:controller/block/manage/loot_table

data remove storage lalib:temp manage
