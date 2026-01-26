
scoreboard players remove #range lalib.main 5

execute if function lalib:sys/player/find_block/is_container align xyz positioned ~0.5 ~0.5 ~0.5 run return run function lalib:sys/player/find_block/3
execute if score #range lalib.main matches ..-1 run return run function lalib:sys/player/find_block/no_block

execute positioned ^ ^ ^0.5 run function lalib:sys/player/find_block/2