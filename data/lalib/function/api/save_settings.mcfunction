
# if (id != item.id & storage.id is exist) :
$execute unless data entity @s SelectedItem.components.minecraft:custom_data.lalib{id:"$(id)"} if data storage lalib:loot_storage $(id) run return run function lalib:player/info/cant_copy_storage {id:$(id)}

# else :
$data modify storage lalib:temp copy set value {id:"$(id)",max_width:$(max_width)}
data modify storage lalib:temp copy.mainhand_id set from entity @s SelectedItem.components.minecraft:custom_data.lalib.id
function lalib:controller/storage/copy with storage lalib:temp copy
data remove storage lalib:temp copy

# fx
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Save successfully."}]
playsound minecraft:block.vault.eject_item master @s ~ ~ ~ 1 1