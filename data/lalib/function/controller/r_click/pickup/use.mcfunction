
tag @s add lalib.controller.r_click.pickup

# b0cc4ea9-3e6c-4b3c-b66c-dda2e35945c7
summon item_display ~ ~ ~ {UUID:[I;-1328787799,1047284540,-1234379358,-480688697]}
execute as b0cc4ea9-3e6c-4b3c-b66c-dda2e35945c7 at @s run function lalib:controller/r_click/pickup/data
setblock ~ ~ ~ air strict

# fx
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.75
playsound minecraft:entity.goat.long_jump master @a ~ ~ ~ 1 0.75
function lalib:player/find_block/fx/modify

title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{text:"Right click"},{color:"gray",text:" again to put down."}]


# if (has block infront) :
#   偵測前面align跟後面align差距的方向是多少 -> 判斷 facing
# else :
#   根據玩家當前pitch來判斷是否要up, down or wesn