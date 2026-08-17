## usage : carry the archived LootTable back into the entry

execute unless data storage lalib:temp manage.LootTable run return fail

# sign proxy : line 2~4 are editable, so they win over the archive
execute if data storage lalib:temp current.block.front_text run function lalib:controller/block/manage/sign/use
execute if data storage lalib:temp current.block.front_text run data remove storage lalib:temp current.block.front_text
execute if data storage lalib:temp current.block.back_text run data remove storage lalib:temp current.block.back_text
execute if data storage lalib:temp current.block.is_waxed run data remove storage lalib:temp current.block.is_waxed

# user filled the copy : real contents win
execute if data storage lalib:temp current.block.Items[0] run return fail
execute if data storage lalib:temp current.block.item run return fail

data modify storage lalib:temp current.block.LootTable set from storage lalib:temp manage.LootTable
execute if data storage lalib:temp manage.LootTableSeed run data modify storage lalib:temp current.block.LootTableSeed set from storage lalib:temp manage.LootTableSeed
execute if data storage lalib:temp current.block.Items run data remove storage lalib:temp current.block.Items
