
$execute unless data storage lalib:loot_storage $(id).containers[0] run return run function lalib:sys/loot_storage/no_containers_load

$data modify storage lalib:temp curr_storage set from storage lalib:loot_storage $(id)

execute summon marker run function lalib:sys/load_management/fix_yaw with storage lalib:temp curr_storage
scoreboard players set #curr_length lalib.main 0
execute store result score #max_width lalib.main run data get storage lalib:temp curr_storage.management.max_width
scoreboard players set #wrap_left lalib.main 1

execute as @e[tag=lalib.fix_yaw,type=marker,limit=1] at @s rotated ~ 0 positioned ^ ^ ^1 run function lalib:sys/load_management/loop

data remove storage lalib:temp curr_storage
kill @e[tag=lalib.fix_yaw,type=marker,limit=1]