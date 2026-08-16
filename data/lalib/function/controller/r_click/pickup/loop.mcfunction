
scoreboard players add #range lalib.main 1
execute if score #range lalib.main matches ..8 positioned ^ ^ ^0.5 if block ~ ~ ~ #lalib:transparent run return run function lalib:controller/r_click/pickup/loop

# if (has block infront) :
execute if score #range lalib.main matches ..8 as b0cc4ea9-3e6c-4b3c-b66c-dda2e35945c7 run return run function lalib:controller/r_click/pickup/block_infront

# else :
execute facing entity @s eyes align xyz run tp b0cc4ea9-3e6c-4b3c-b66c-dda2e35945c7 ~0.5 ~0.5 ~0.5 ~ ~