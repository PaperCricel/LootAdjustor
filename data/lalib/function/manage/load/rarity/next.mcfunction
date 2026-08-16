## (exe) marker

scoreboard players add #rarity lalib.main 1
execute if score #rarity lalib.main matches 10.. run return fail

execute store result storage lalib:temp banner.n int 1 run scoreboard players get #rarity lalib.main
return run function lalib:manage/load/rarity/group with storage lalib:temp banner
