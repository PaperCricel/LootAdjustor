
# find container
tag @s add lalib.block_finder.left_click
data modify storage lalib:temp current set value {id:'',containers:[]}
data modify storage lalib:temp current.id set from entity @s SelectedItem.components."minecraft:custom_data".lalib.id

scoreboard players set #range lalib.main 100
execute anchored eyes positioned ^ ^ ^ run function lalib:sys/block_finder/2

# reset
data remove storage lalib:temp current