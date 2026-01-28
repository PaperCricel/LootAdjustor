
# fx
function lalib:player/find_block/fx/fail
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"Cannot found this container in "},{color:"white",nbt:"current.id",storage:"lalib:temp"},{color:"red",text:"."}]
playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.5 0
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1