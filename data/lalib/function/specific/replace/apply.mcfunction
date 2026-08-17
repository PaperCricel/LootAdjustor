
scoreboard players add #stacks lalib.main 1
execute store result score #amount lalib.main run data get storage lalib:temp specific.cand[0].count
scoreboard players operation #total lalib.main += #amount lalib.main

# no replacement in hand : drop the entry
$execute unless data storage lalib:temp specific.new run return run data remove storage lalib:loot_storage $(id).containers[$(i)].Items[{Slot:$(slot)b}]

# keep the original slot and stack size
data modify storage lalib:temp specific.item set from storage lalib:temp specific.new
data modify storage lalib:temp specific.item.Slot set from storage lalib:temp specific.cand[0].Slot
data modify storage lalib:temp specific.item.count set from storage lalib:temp specific.cand[0].count
execute if data storage lalib:temp specific{override:1} run data modify storage lalib:temp specific.item.count set from storage lalib:temp specific.new_count
$data modify storage lalib:loot_storage $(id).containers[$(i)].Items[{Slot:$(slot)b}] set from storage lalib:temp specific.item
