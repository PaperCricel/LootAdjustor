
# if (no containers remaining) :
execute unless data storage lalib:temp curr_storage.containers[0] run return fail

# elif (!is_loaded) :
execute unless loaded ~ ~ ~ run return run execute as @a[tag=lalib.load.user,limit=1] run function lalib:player/info/manage_chunk_no_load

# elif (block & !management_container) :
execute unless block ~ ~ ~ #air unless function lalib:manage/load/is_container run return run execute as @a[tag=lalib.load.user,limit=1] run function lalib:player/info/manage_obstacle

# loop
scoreboard players add #curr_length lalib.main 1

function lalib:manage/load/setblock/use
data remove storage lalib:temp curr_storage.containers[0]

execute if score #curr_length lalib.main < #max_width lalib.main positioned ^ ^ ^1 run return run function lalib:manage/load/loop

# break line
scoreboard players set #curr_length lalib.main 0
execute at @s positioned ^1 ^ ^ run tp ~ ~ ~
execute at @s positioned ^ ^ ^1 run function lalib:manage/load/loop