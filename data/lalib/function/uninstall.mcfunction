
scoreboard objectives remove lalib.main
scoreboard objectives remove lalib.trigger

# fx
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Uninstalled."}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.2 2
playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 0.75 2