
execute unless data storage lalib:temp current{input:"l_click"} unless data storage lalib:temp current{input:"r_click"} run return fail

# fx
function lalib:player/find_block/fx/fail
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"No found any container."}]
playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.5 0
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1