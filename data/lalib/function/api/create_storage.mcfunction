
# init storage
$execute unless data storage lalib:loot_storage $(id) run \
data modify storage lalib:loot_storage $(id) set value {id:$(id),management:{width:$(width)},containers:[]}

# get grabber
$function lalib:api/get_grabber {id:"$(id)"}

# fx
$title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Create loot storage "},{color:"white",text:"$(id)"},{color:"gray",text:"."}]
playsound minecraft:block.vault.eject_item master @a ~ ~ ~ 1 1