
# find container
tag @s add lalib.player.left_click
data modify storage lalib:temp current set from entity @s SelectedItem.components."minecraft:custom_data".lalib
data modify storage lalib:temp current.input set value left_click

scoreboard players set #range lalib.main 100
execute anchored eyes positioned ^ ^ ^ run function lalib:sys/player/find_block/2

# reset
tag @s remove lalib.player.left_click
data remove storage lalib:temp current