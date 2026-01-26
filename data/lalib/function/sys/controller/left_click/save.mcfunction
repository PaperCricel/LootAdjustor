
data remove storage lalib:temp current.block.storage_id
data remove storage lalib:temp current.block.components.minecraft:custom_data.lalib
execute if data storage lalib:temp current.block.components{"minecraft:custom_data":{}} run data remove storage lalib:temp current.block.components.minecraft:custom_data

$data modify storage lalib:loot_storage $(storage_id).containers[{x:$(x),y:$(y),z:$(z)}] set from storage lalib:temp current.block

# fx
function lalib:sys/player/find_block/fx/success
$title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Save this container to the "},{color:"white",text:"$(storage_id)"},{color:"gray",text:"."}]
playsound minecraft:block.decorated_pot.insert master @a ~ ~ ~ 1 0