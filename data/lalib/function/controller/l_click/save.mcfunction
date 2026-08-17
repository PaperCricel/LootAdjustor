
$data modify storage lalib:loot_storage $(id).containers[{x:$(x),y:$(y),z:$(z)}] set from storage lalib:temp current.block

# fx
function lalib:player/find_block/fx/success
execute unless data storage lalib:temp current.block.LootTable run title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Save this container to "},{color:"white",nbt:"current.id",storage:"lalib:temp"},{color:"gray",text:"."}]
execute if data storage lalib:temp current.block.LootTable run title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Save this "},{color:"#f0cf6e",bold:1b,text:"Loot Table"},{color:"gray",text:" container to "},{color:"white",nbt:"current.id",storage:"lalib:temp"},{color:"gray",text:"."}]
playsound minecraft:block.decorated_pot.insert master @s ~ ~ ~ 1 0