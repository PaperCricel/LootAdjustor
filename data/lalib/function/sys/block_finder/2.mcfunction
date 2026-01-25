
scoreboard players remove #range lalib.main 5

execute if function lalib:sys/block_finder/is_container align xyz positioned ~0.5 ~0.5 ~0.5 run return run function lalib:sys/block_finder/3
execute if score #range lalib.main matches ..-1 run return run execute if entity @s[tag=lalib.block_finder.left_click] run function lalib:sys/block_finder/no_block

execute positioned ^ ^ ^0.5 run function lalib:sys/block_finder/2