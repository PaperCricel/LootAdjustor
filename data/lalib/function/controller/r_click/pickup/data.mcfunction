
data modify entity @s data set from storage lalib:temp current
data modify entity @s item.id set from storage lalib:temp current.block.id
data merge entity @s {Glowing:1b,transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute if block ~ ~ ~ #lalib:y_facing run tag @s add lalib.controller.r_click.pickup.y_facing
execute if block ~ ~ ~ #lalib:no_facing run tag @s add lalib.controller.r_click.pickup.no_facing
execute if block ~ ~ ~ #lalib:y_facing/no_up run tag @s add lalib.controller.r_click.pickup.no_up
execute if block ~ ~ ~ #lalib:y_facing/top_open run data merge entity @s {transformation:{left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f]}}
execute if block ~ ~ ~ #lalib:y_facing/side_open run data merge entity @s {transformation:{left_rotation: [0.0f, 0.0f, 0.0f, 1.0f]}}
execute if block ~ ~ ~ #lalib:y_facing/bottom_open run data merge entity @s {transformation:{left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f]}}