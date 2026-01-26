
$data modify storage lalib:temp curr_storage set from storage lalib:loot_storage $(id)

execute summon marker run function lalib:sys/load_manage/fix_yaw with storage lalib:temp curr_storage
scoreboard players set #curr_length lalib.main 0
scoreboard players set #max_length lalib.main 5
scoreboard players set #wrap_left lalib.main 1

execute as @e[tag=lalib.fix_yaw,type=marker,limit=1] at @s rotated ~ 0 positioned ^ ^ ^1 run function lalib:sys/load_manage/loop

data remove storage lalib:temp curr_storage
kill @e[tag=lalib.fix_yaw,type=marker,limit=1]