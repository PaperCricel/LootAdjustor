
# collect candidates
data modify storage lalib:temp specific.cand set value []
$data modify storage lalib:temp specific.cand append from storage lalib:loot_storage $(id).containers[].Items[$(filter)]
$data modify storage lalib:temp specific.cand append from storage lalib:loot_storage $(id).containers[{item:$(filter)}].item

scoreboard players set #total lalib.main 0
scoreboard players set #stacks lalib.main 0
execute if data storage lalib:temp specific.cand[0] run function lalib:specific/count/loop

execute store result storage lalib:temp specific.count int 1 run scoreboard players get #total lalib.main
execute store result storage lalib:temp specific.stack int 1 run scoreboard players get #stacks lalib.main
data modify storage lalib:temp specific.item_id set from storage lalib:temp specific.filter.id
data remove storage lalib:temp specific.cand
