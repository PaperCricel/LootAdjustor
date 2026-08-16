## usage : write the controller's rarity into the container entry

data modify storage lalib:temp current.block.rarity set value 0
execute store result storage lalib:temp current.block.rarity int 1 run data get storage lalib:temp current.rarity
