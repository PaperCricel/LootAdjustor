
execute if entity @s[x_rotation=89..91] run return run data modify storage lalib:temp current.block.facing set value '[facing=down]'
execute if entity @s[x_rotation=-91..-89] run return run data modify storage lalib:temp current.block.facing set value '[facing=up]'

execute if entity @s[y_rotation=0] run return run data modify storage lalib:temp current.block.facing set value '[facing=south]'
execute if entity @s[y_rotation=90] run return run data modify storage lalib:temp current.block.facing set value '[facing=west]'
execute if entity @s[y_rotation=180] run return run data modify storage lalib:temp current.block.facing set value '[facing=north]'
execute if entity @s[y_rotation=-90] run return run data modify storage lalib:temp current.block.facing set value '[facing=east]'