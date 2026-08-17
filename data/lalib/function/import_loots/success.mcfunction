
# fx
title @a[tag=lalib.import_loots.user,limit=1] actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Import containers from "},{color:"white",nbt:"curr_storage.id",storage:"lalib:temp",extra:[" "]},{color:"gray",text:"to the world."}]
execute as @a[tag=lalib.import_loots.user,limit=1] at @s run playsound minecraft:block.decorated_pot.insert master @s ~ ~ ~ 1 0

# outdated
execute if score #outdated lalib.main matches 1.. as @a[tag=lalib.import_loots.user,limit=1] run function lalib:player/info/outdated_removed

tag @a[tag=lalib.import_loots.user,limit=1] remove lalib.import_loots.user