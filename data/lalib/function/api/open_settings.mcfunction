
# highlight toggle
$data modify storage lalib:temp settings set value {id:"$(id)",max_width:$(max_width),rarity:$(rarity),highlight:"Highlight",highlight_api:"highlight"}
$execute if data storage lalib:loot_storage $(id).highlight run data modify storage lalib:temp settings merge value {highlight:"Unhighlight",highlight_api:"dehighlight"}

function lalib:player/open_settings/dialog with storage lalib:temp settings
data remove storage lalib:temp settings
