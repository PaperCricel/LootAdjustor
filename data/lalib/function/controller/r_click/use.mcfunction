## usage : remove container to storage

function lalib:controller/block/use
function lalib:controller/storage/load with storage lalib:temp current

# if (!found container in storage) :
execute unless function lalib:controller/is_repeat/use run return run function lalib:player/info/cant_delete

# else :
summon marker ~ ~ ~ {Tags:["lalib.controller.for_dialog"]}
data modify storage lalib:temp for_dialog set from storage lalib:temp current

scoreboard players enable @s lalib.trigger
dialog show @s {type:"minecraft:confirmation",title:"Remove Container",body:{type:"minecraft:plain_message",contents:"Are you sure to delete this container?"},yes:{label:"Delete",action:{type:"minecraft:run_command",command:"trigger lalib.trigger set 1"}},no:{label:"Cancel",action:{type:"minecraft:run_command",command:"trigger lalib.trigger set 2"}}}