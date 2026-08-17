
# fx
tellraw @s ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Removed "},{color:"white",score:{name:"#outdated",objective:"lalib.main"}},{color:"gray",text:" outdated container(s) from "},{color:"white",nbt:"curr_storage.id",storage:"lalib:temp"},{color:"gray",text:", their containers no longer exist."}]
playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 0.5 2
