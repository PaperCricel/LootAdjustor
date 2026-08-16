
# find container
data modify storage lalib:temp current set from entity @s SelectedItem.components."minecraft:custom_data".lalib
data modify storage lalib:temp current.input set value l_click

function lalib:player/find_block/use

# reset
data remove storage lalib:temp current