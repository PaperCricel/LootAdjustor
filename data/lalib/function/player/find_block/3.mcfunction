
execute if data storage lalib:temp current.input run return run function lalib:player/find_block/3b with storage lalib:temp current

# fx
function lalib:player/find_block/fx/main
execute if data block ~ ~ ~ components."minecraft:custom_data".lalib run function lalib:player/find_block/fx/manage/fx with block ~ ~ ~ components.minecraft:custom_data.lalib