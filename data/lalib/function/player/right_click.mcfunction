
# find container
data modify storage lalib:temp current set from entity @s SelectedItem.components."minecraft:custom_data".lalib
data modify storage lalib:temp current.input set value r_click

function lalib:player/find_block/use

# reset
data remove storage lalib:temp current
advancement revoke @s only lalib:right_click

item modify entity @s weapon.mainhand {function:"set_components",components:{"axolotl/variant":"blue"}}
item modify entity @s weapon.mainhand {function:"set_components",components:{"!axolotl/variant":{}}}