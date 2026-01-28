## usage : for user to copy data to another storage when saving settings

# loot storage
$data modify storage lalib:temp copy.curr_storage set from storage lalib:loot_storage $(mainhand_id)
$data remove storage lalib:loot_storage $(mainhand_id)
$data modify storage lalib:loot_storage $(id) set from storage lalib:temp copy.curr_storage
$data modify storage lalib:loot_storage $(id).management.max_width set value $(max_width)

# controller
$item modify entity @s weapon.mainhand [{function:"minecraft:set_name",entity:"this",name:[{text:"Loot Controller ",color:"white"},{color:"gray",text:"($(id))"}],target:"item_name",conditions:[]},{function:"minecraft:set_custom_data",tag:{lalib:{id:"$(id)"}}}]