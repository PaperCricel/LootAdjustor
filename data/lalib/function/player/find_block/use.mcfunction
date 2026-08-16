
# if (picking up loot) :
execute if entity @s[tag=lalib.controller.r_click.pickup] run return run execute if data storage lalib:temp current{input:r_click} at b0cc4ea9-3e6c-4b3c-b66c-dda2e35945c7 run function lalib:controller/r_click/place/use

# else :
scoreboard players set #range lalib.main 100
execute anchored eyes positioned ^ ^ ^ run function lalib:player/find_block/2