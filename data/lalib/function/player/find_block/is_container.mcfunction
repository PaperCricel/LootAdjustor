
execute if block ~ ~ ~ #lalib:transparent run return fail
execute if block ~ ~ ~ #campfires run return fail
execute if block ~ ~ ~ #shulker_boxes run return 1

# management copy : the loot table proxy is a sign, not a container
execute if data block ~ ~ ~ components."minecraft:custom_data".lalib run return 1

execute if data block ~ ~ ~ Items run return 1
execute if data block ~ ~ ~ item run return 1

# loot table container : no Items key until it is opened
execute if data block ~ ~ ~ LootTable run return 1

return fail