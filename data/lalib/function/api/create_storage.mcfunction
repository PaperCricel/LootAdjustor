
$execute if data storage lalib:loot_storage $(id) run return run function lalib:player/info/already_exist

# init storage
$data modify storage lalib:loot_storage $(id) set value {id:$(id),management:{max_width:$(max_width)},containers:[]}
$function lalib:manage/relocate/use {id:"$(id)"}
$function lalib:api/get_controller {id:"$(id)"}

# fx
$title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Create loot storage "},{color:"white",text:"$(id)"},{color:"gray",text:"."}]
playsound minecraft:block.vault.eject_item master @s ~ ~ ~ 1 1