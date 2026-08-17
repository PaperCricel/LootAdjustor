## usage : hotbar 2nd is the reference, hotbar 3rd is the replacement

data modify storage lalib:temp specific.filter set from entity @s Inventory[{Slot:1b}]
data remove storage lalib:temp specific.filter.Slot
data remove storage lalib:temp specific.filter.count

data modify storage lalib:temp specific.new set from entity @s Inventory[{Slot:2b}]
data modify storage lalib:temp specific.new_count set value 1
data modify storage lalib:temp specific.new_count set from storage lalib:temp specific.new.count
data remove storage lalib:temp specific.new.Slot
data remove storage lalib:temp specific.new.count
