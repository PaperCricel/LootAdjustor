
function lalib:sys/player/find_block/fx/fail
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"white",storage:"lalib:temp",nbt:"current.id"},{color:"red",text:" already have a container in the same spot."}]
playsound minecraft:block.vault.close_shutter master @a ~ ~ ~ 0.5 0
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 1