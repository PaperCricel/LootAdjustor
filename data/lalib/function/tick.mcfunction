
# find block
execute as @a[predicate=lalib:player/find_block] at @s run function lalib:player/find_block/use
execute as fb086e24-29aa-44bc-b019-a4047df3eb50 at @s run function lalib:player/find_block/fx/manage/main

# pickup
execute as @a[tag=lalib.controller.r_click.pickup] at @s run function lalib:controller/r_click/pickup/main