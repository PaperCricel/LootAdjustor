
function lalib:sys/player/find_block/fx/fail
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"Cannot found this container in "},{color:"white",storage:"lalib:temp",nbt:"current.block.storage_id"},{text:" to remove.",color:"red"}]
playsound minecraft:block.vault.close_shutter master @a ~ ~ ~ 0.5 0
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 1