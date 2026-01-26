
# find container
data modify storage lalib:temp current set from entity @s SelectedItem.components."minecraft:custom_data".lalib
data modify storage lalib:temp current.input set value right_click

scoreboard players set #range lalib.main 100
execute anchored eyes positioned ^ ^ ^ run function lalib:sys/player/find_block/2

# reset
data remove storage lalib:temp current
advancement revoke @s only lalib:right_click

item modify entity @s weapon.mainhand {function:"set_components",components:{"axolotl/variant":"blue"}}
item modify entity @s weapon.mainhand {function:"set_components",components:{"!axolotl/variant":{}}}