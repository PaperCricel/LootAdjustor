
tag @s remove lalib.block_finder.left_click

# is repeat
$data modify storage lalib:temp current.containers set from storage lalib:loot_storage $(id).containers
execute if function lalib:sys/block_finder/left_click/is_repeat/use run return run function lalib:sys/block_finder/left_click/is_repeat/fail

$data modify storage lalib:loot_storage $(id).containers append from block ~ ~ ~

# fx
$tellraw @s ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Append new container in "},{color:"white",text:"$(id)"},{color:"gray",text:"."}]
playsound minecraft:block.decorated_pot.insert master @a ~ ~ ~ 1 0