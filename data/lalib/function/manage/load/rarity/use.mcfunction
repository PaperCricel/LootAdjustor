## (exe) marker

# banner facing : rot = floor(((yaw + 180) * 16 + 180) / 360) % 16
execute store result score #banner_rot lalib.main run data get entity @s Rotation[0] 1
scoreboard players add #banner_rot lalib.main 180
scoreboard players operation #banner_rot lalib.main *= #16 lalib.main
scoreboard players add #banner_rot lalib.main 180
scoreboard players operation #banner_rot lalib.main /= #360 lalib.main
scoreboard players operation #banner_rot lalib.main %= #16 lalib.main
execute store result storage lalib:temp banner.rot int 1 run scoreboard players get #banner_rot lalib.main

function lalib:manage/load/rarity/partition

scoreboard players set #rarity lalib.main -1
function lalib:manage/load/rarity/next

data remove storage lalib:temp banner
