
$data modify storage lalib:temp offhand.id set value "$(id)"
$data modify storage lalib:temp offhand.max_width set from storage lalib:loot_storage $(id).management.max_width

# rarity : default 0
data modify storage lalib:temp offhand.rarity set value 0
execute store result storage lalib:temp offhand.rarity int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".lalib.rarity

function lalib:api/open_settings with storage lalib:temp offhand
data remove storage lalib:temp offhand
