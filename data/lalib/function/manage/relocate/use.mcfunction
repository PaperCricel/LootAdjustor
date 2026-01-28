
$execute store result storage lalib:loot_storage $(id).management.center_x int 1 run data get entity @s Pos[0]
$execute store result storage lalib:loot_storage $(id).management.center_y int 1 run data get entity @s Pos[1]
$execute store result storage lalib:loot_storage $(id).management.center_z int 1 run data get entity @s Pos[2]
$execute store result storage lalib:loot_storage $(id).management.center_yaw float 0.01 summon marker run function lalib:manage/relocate/fix_yaw

# fx
$function lalib:manage/relocate/interpret with storage lalib:loot_storage $(id).management