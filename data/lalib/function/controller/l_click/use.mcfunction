## usage : add/save container to storage

function lalib:controller/block/use
function lalib:controller/rarity/stamp
function lalib:controller/storage/load with storage lalib:temp current

# if (already added) :
execute if function lalib:controller/is_repeat/use run return run function lalib:controller/l_click/save with storage lalib:temp current

# else :
function lalib:controller/storage/save with storage lalib:temp current

# fx
function lalib:player/find_block/fx/success
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Append this container to "},{color:"white",nbt:"current.id",storage:"lalib:temp"},{color:"gray",text:"."}]
playsound minecraft:block.decorated_pot.insert master @s ~ ~ ~ 1 0
