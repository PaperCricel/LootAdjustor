
# if (block != air) :
execute unless block ~ ~ ~ #lalib:transparent run return run function lalib:player/info/cant_place

# else :
tag @s remove lalib.controller.r_click.pickup

data modify storage lalib:temp current set from entity b0cc4ea9-3e6c-4b3c-b66c-dda2e35945c7 data
execute as b0cc4ea9-3e6c-4b3c-b66c-dda2e35945c7 run function lalib:controller/r_click/place/facing/use
function lalib:controller/r_click/place/interpret with storage lalib:temp current.block
kill b0cc4ea9-3e6c-4b3c-b66c-dda2e35945c7
data remove storage lalib:temp current

# fx
playsound minecraft:item.bundle.drop_contents master @a ~ ~ ~ 1 1.5
function lalib:player/find_block/fx/modify