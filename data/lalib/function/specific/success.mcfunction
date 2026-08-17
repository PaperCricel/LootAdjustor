
execute if score #total lalib.main matches 0 run return run function lalib:player/info/not_matched

# fx
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Replace "},{color:"white",score:{name:"#total",objective:"lalib.main"}},{color:"gray",text:" item(s) in "},{color:"white",nbt:"specific.id",storage:"lalib:temp"},{color:"gray",text:"."}]
playsound minecraft:block.decorated_pot.insert master @s ~ ~ ~ 1 0
