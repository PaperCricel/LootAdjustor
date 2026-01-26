
execute unless entity @s[tag=lalib.player.left_click] unless entity @s[tag=lalib.player.right_click] run return fail

# fx
function lalib:sys/player/find_block/fx/fail
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"red",text:"No found any container."}]
playsound minecraft:block.vault.close_shutter master @a ~ ~ ~ 0.5 0
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 1