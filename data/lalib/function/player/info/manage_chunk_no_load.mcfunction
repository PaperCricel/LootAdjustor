
scoreboard players set #pass lalib.main 0

# fx
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"Chunk not fully loaded, management loading aborted."}]
execute at @s run playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.5 0
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1