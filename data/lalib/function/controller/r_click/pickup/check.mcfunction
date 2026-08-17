
execute if block ~ ~ ~ #lalib:cant_pickup run return run function lalib:player/info/cant_pickup
execute if data block ~ ~ ~ components."minecraft:custom_data".lalib run return run function lalib:player/info/cant_pickup

return run function lalib:controller/r_click/pickup/use
