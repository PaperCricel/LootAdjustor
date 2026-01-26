
# fx
function lalib:sys/player/find_block/fx/fail
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"This container is not from management area."}]
playsound minecraft:block.vault.close_shutter master @a ~ ~ ~ 0.5 0
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 1