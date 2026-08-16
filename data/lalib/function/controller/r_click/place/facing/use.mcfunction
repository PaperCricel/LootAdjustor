
# if (no facing) :
execute if entity @s[tag=lalib.controller.r_click.pickup.no_facing] run return run data modify storage lalib:temp current.block.facing set value ''

# elif (y facing) :
execute if entity @s[tag=lalib.controller.r_click.pickup.y_facing] run return run function lalib:controller/r_click/place/facing/y_facing

# else :
execute if entity @s[y_rotation=0] run return run data modify storage lalib:temp current.block.facing set value '[facing=south]'
execute if entity @s[y_rotation=90] run return run data modify storage lalib:temp current.block.facing set value '[facing=west]'
execute if entity @s[y_rotation=180] run return run data modify storage lalib:temp current.block.facing set value '[facing=north]'
execute if entity @s[y_rotation=-90] run return run data modify storage lalib:temp current.block.facing set value '[facing=east]'