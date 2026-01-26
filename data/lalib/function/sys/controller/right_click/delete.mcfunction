
$data remove storage lalib:loot_storage $(storage_id).containers[{x:$(x),y:$(y),z:$(z)}]

# fx
function lalib:sys/player/find_block/fx/success
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Remove the container at the same spot of the "},{color:"white",nbt:"for_dialog.storage_id",storage:"lalib:temp"},{color:"gray",text:"."}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.2 2

function lalib:sys/controller/right_click/clear