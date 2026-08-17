## usage : sync the block's LootTable with the stored entry

# entry holds real contents : drop the table
execute unless data storage lalib:temp return.containers[0].LootTable if data block ~ ~ ~ LootTable run data remove block ~ ~ ~ LootTable
execute unless data storage lalib:temp return.containers[0].LootTable if data block ~ ~ ~ LootTableSeed run data remove block ~ ~ ~ LootTableSeed
execute unless data storage lalib:temp return.containers[0].LootTable run return fail

# entry is table driven
data modify block ~ ~ ~ LootTable set from storage lalib:temp return.containers[0].LootTable
execute if data storage lalib:temp return.containers[0].LootTableSeed run data modify block ~ ~ ~ LootTableSeed set from storage lalib:temp return.containers[0].LootTableSeed
execute unless data storage lalib:temp return.containers[0].LootTableSeed if data block ~ ~ ~ LootTableSeed run data remove block ~ ~ ~ LootTableSeed
