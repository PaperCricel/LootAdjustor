
scoreboard objectives add lalib.main dummy
scoreboard objectives add lalib.trigger trigger

scoreboard players set #9000 lalib.main 9000

# fx
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Loot Adjustor Installed."}]
playsound minecraft:block.vault.eject_item master @s ~ ~ ~ 1 1