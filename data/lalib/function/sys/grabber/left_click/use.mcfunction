
execute if data block ~ ~ ~ components.minecraft:custom_data.lalib.storage_id run return run function lalib:sys/grabber/no_manage

# is repeat
$data modify storage lalib:temp current.containers set from storage lalib:loot_storage $(id).containers
execute if function lalib:sys/grabber/left_click/is_repeat/use run return run function lalib:sys/grabber/left_click/is_repeat/fail

function lalib:sys/grabber/left_click/2
$data modify storage lalib:loot_storage $(id).containers append from storage lalib:temp block
data remove storage lalib:temp block

# fx
function lalib:sys/player/find_block/fx/success
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Append new container in "},{color:"white",nbt:"current.id",storage:"lalib:temp"},{color:"gray",text:"."}]
playsound minecraft:block.decorated_pot.insert master @a ~ ~ ~ 1 0