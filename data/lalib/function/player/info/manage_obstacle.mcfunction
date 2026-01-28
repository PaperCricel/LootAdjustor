
scoreboard players set #pass lalib.main 0

# fx
execute positioned ~ ~0.5 ~ run function lalib:player/find_block/fx/warning
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"Irrelevant block detected, management loading aborted."}]
execute at @s run playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.5 0
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1