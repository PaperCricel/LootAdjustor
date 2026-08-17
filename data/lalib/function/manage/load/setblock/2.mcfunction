## usage : load container properly (maybe)

execute if data storage lalib:temp block.LootTable run function lalib:manage/load/setblock/sign with storage lalib:temp block
execute unless data storage lalib:temp block.LootTable run function lalib:manage/load/setblock/container with storage lalib:temp block

data modify block ~ ~ ~ components."minecraft:custom_data".lalib set from storage lalib:temp block
data modify block ~ ~ ~ components."minecraft:custom_data".lalib.id set from storage lalib:temp curr_storage.id
