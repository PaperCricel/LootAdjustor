
tag @s remove lalib.block_finder.right_click

$data modify storage lalib:temp current.containers set from storage lalib:loot_storage $(id).containers
data modify storage lalib:temp current.x set from block ~ ~ ~ x
data modify storage lalib:temp current.y set from block ~ ~ ~ y
data modify storage lalib:temp current.z set from block ~ ~ ~ z
execute store success score #pass lalib.main run function lalib:sys/block_finder/right_click/is_exist/2 with storage lalib:temp current

execute if score #pass lalib.main matches 0 run return run function lalib:sys/block_finder/right_click/is_exist/fail

# fx
tellraw @s ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Remove the container at the same spot of the "},{color:"white",nbt:"current.id",storage:"lalib:temp"},{color:"gray",text:"."}]
playsound minecraft:block.decorated_pot.insert master @a ~ ~ ~ 1 0