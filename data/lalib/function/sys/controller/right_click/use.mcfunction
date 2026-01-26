
execute unless data block ~ ~ ~ components.minecraft:custom_data.lalib.storage_id run return run function lalib:sys/controller/is_manage

data modify storage lalib:temp current.block set from block ~ ~ ~ components.minecraft:custom_data.lalib

execute store success score #pass lalib.main run function lalib:sys/controller/right_click/is_container with storage lalib:temp current.block
execute if score #pass lalib.main matches 0 run return run function lalib:sys/controller/right_click/fail

summon marker ~ ~ ~ {Tags:["lalib.controller.for_dialog"]}
data modify storage lalib:temp for_dialog set from storage lalib:temp current.block
scoreboard players enable @s lalib.trigger
dialog show @s {type:"minecraft:confirmation",title:"Test",body:{type:"minecraft:plain_message",contents:"Are you sure to delete this container from this management area?"},yes:{label:"Delete",action:{type:"minecraft:run_command",command:"trigger lalib.trigger set 1"}},no:{label:"Cancel",action:{type:"minecraft:run_command",command:"trigger lalib.trigger set 2"}}}