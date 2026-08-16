
# if (no facing) :
execute if entity @s[tag=lalib.controller.r_click.pickup.no_facing] run return run rotate @s 0 0

# else :
execute store result score #yaw lalib.main run data get entity @s Rotation[0] 100
scoreboard players add #yaw lalib.main 4499
scoreboard players operation #yaw lalib.main /= #9000 lalib.main
scoreboard players operation #yaw lalib.main *= #9000 lalib.main
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #yaw lalib.main

    # if (!y facing) :
execute unless entity @s[tag=lalib.controller.r_click.pickup.y_facing] at @s run return run rotate @s ~ 0

    # else :
execute store result score #pitch lalib.main run data get entity @s Rotation[1] 100
scoreboard players add #pitch lalib.main 4499
scoreboard players operation #pitch lalib.main /= #9000 lalib.main
scoreboard players operation #pitch lalib.main *= #9000 lalib.main
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #pitch lalib.main

execute unless score #pitch lalib.main matches -9000 unless score #pitch lalib.main matches 9000 run return fail
execute at @s run rotate @s 180 ~