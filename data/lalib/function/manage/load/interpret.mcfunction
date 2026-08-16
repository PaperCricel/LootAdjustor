
scoreboard players set #pass lalib.main 1
tag @s add lalib.load.user

$summon marker $(center_x) $(center_y) $(center_z) {UUID:[I;512476743,-1022211598,-1732090456,-1152079661],Rotation:[$(center_yaw)f,0f]}
execute if score #rarity_mode lalib.main matches 0 as 1e8bc647-c312-49f2-98c2-65a8bb54a8d3 at @s positioned ^ ^ ^1 run function lalib:manage/load/loop
execute if score #rarity_mode lalib.main matches 1 as 1e8bc647-c312-49f2-98c2-65a8bb54a8d3 at @s run function lalib:manage/load/rarity/use

kill 1e8bc647-c312-49f2-98c2-65a8bb54a8d3
tag @s remove lalib.load.user

# fx
execute if score #pass lalib.main matches 0 run return fail
title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Load "},{color:"white",nbt:"curr_storage.id",storage:"lalib:temp"},{color:"gray",text:" successfully."}]
playsound minecraft:block.vault.eject_item master @s ~ ~ ~ 1 0.75
