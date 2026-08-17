## (exe) marker
## usage : rot = floor(((yaw + 180) * 16 + 180) / 360) % 16

execute store result score #rot lalib.main run data get entity @s Rotation[0] 1
scoreboard players add #rot lalib.main 180
scoreboard players operation #rot lalib.main *= #16 lalib.main
scoreboard players add #rot lalib.main 180
scoreboard players operation #rot lalib.main /= #360 lalib.main
scoreboard players operation #rot lalib.main %= #16 lalib.main

execute store result storage lalib:temp rot int 1 run scoreboard players get #rot lalib.main
