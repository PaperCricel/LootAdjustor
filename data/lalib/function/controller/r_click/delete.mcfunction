
function lalib:controller/storage/remove with storage lalib:temp for_dialog

# fx
function lalib:player/find_block/fx/success
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Remove this container in "},{color:"white",nbt:"for_dialog.id",storage:"lalib:temp"},{color:"gray",text:"."}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.2 2
playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 0.75 2

function lalib:controller/r_click/clear