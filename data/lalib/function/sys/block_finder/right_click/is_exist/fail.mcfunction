
tellraw @s ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"This container cannot be remove in "},{color:"white",storage:"lalib:temp",nbt:"current.id"},{text:".",color:"red"}]
playsound minecraft:block.vault.close_shutter master @a ~ ~ ~ 0.5 0
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 1