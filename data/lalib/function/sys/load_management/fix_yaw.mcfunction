
tag @s add lalib.fix_yaw

# rotation
execute align xyz run tp @s ~0.5 ~0.5 ~0.5 ~ 0
execute store result score #yaw lalib.main run data get entity @s Rotation[0] 100

scoreboard players add #yaw lalib.main 4499
scoreboard players operation #yaw lalib.main /= #9000 lalib.main
scoreboard players operation #yaw lalib.main *= #9000 lalib.main

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #yaw lalib.main

# center
$execute store result storage lalib:loot_storage $(id).management.center_x int 1 run data get entity @s Pos[0]
$execute store result storage lalib:loot_storage $(id).management.center_y int 1 run data get entity @s Pos[1]
$execute store result storage lalib:loot_storage $(id).management.center_z int 1 run data get entity @s Pos[2]