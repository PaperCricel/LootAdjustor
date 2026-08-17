
$data modify storage lalib:temp specific.probe set from storage lalib:loot_storage $(id).containers[$(i)].item
data modify storage lalib:temp specific.amount set from storage lalib:temp specific.probe.count
data remove storage lalib:temp specific.probe.count
function lalib:specific/is_same

execute unless score #differ lalib.main matches 0 run return 0

scoreboard players add #stacks lalib.main 1
execute store result score #amount lalib.main run data get storage lalib:temp specific.amount
scoreboard players operation #total lalib.main += #amount lalib.main

# no replacement in hand : drop the entry
$execute unless data storage lalib:temp specific.new run return run data remove storage lalib:loot_storage $(id).containers[$(i)].item

data modify storage lalib:temp specific.item set from storage lalib:temp specific.new
data modify storage lalib:temp specific.item.count set from storage lalib:temp specific.amount
execute if data storage lalib:temp specific{override:1} run data modify storage lalib:temp specific.item.count set from storage lalib:temp specific.new_count
$data modify storage lalib:loot_storage $(id).containers[$(i)].item set from storage lalib:temp specific.item
