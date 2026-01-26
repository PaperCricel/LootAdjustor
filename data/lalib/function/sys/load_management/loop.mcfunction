
execute unless data storage lalib:temp curr_storage.containers[0] run return fail

# loop
scoreboard players add #curr_length lalib.main 1

function lalib:sys/load_management/setblock/use
data remove storage lalib:temp curr_storage.containers[0]
particle end_rod ~ ~ ~ 0 0 0 0 0 force

execute if score #curr_length lalib.main < #max_length lalib.main positioned ^ ^ ^1 run function lalib:sys/load_management/loop

# break line
scoreboard players set #curr_length lalib.main 0

execute at @s if score #wrap_left lalib.main matches 1 positioned ^1 ^ ^ run tp ~ ~ ~
execute at @s if score #wrap_left lalib.main matches 0 positioned ^-1 ^ ^ run tp ~ ~ ~

execute at @s positioned ^ ^ ^1 run return run function lalib:sys/load_management/loop