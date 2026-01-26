
data modify storage lalib:temp block set from block ~ ~ ~
execute if data storage lalib:temp block{id:"minecraft:chest"} run return run function lalib:sys/grabber/left_click/specific/chest
execute if data storage lalib:temp block{id:"minecraft:shelf"} run return run function lalib:sys/grabber/left_click/specific/shelf
execute if data storage lalib:temp block{id:"minecraft:shulker_box"} run return run function lalib:sys/grabber/left_click/specific/shulker_box