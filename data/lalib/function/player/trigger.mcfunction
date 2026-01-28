
execute if score @s lalib.trigger matches 1 at @e[tag=lalib.controller.for_dialog,type=marker,limit=1] run function lalib:controller/r_click/delete with storage lalib:temp for_dialog
execute if score @s lalib.trigger matches 2 run function lalib:controller/r_click/clear

scoreboard players reset @s lalib.trigger
advancement revoke @s only lalib:trigger_score