## (exe) marker

execute align xyz run tp @s ~0.5 ~0.5 ~0.5 ~ 0
execute store result score #yaw lalib.main run data get entity @s Rotation[0] 100
kill @s

scoreboard players add #yaw lalib.main 4499
scoreboard players operation #yaw lalib.main /= #9000 lalib.main
scoreboard players operation #yaw lalib.main *= #9000 lalib.main

return run scoreboard players get #yaw lalib.main