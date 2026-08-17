
# fx
function lalib:player/find_block/fx/fail
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"This container cannot be picked up."}]
playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.5 0
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
