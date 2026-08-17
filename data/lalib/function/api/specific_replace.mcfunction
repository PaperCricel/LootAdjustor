
$execute unless data storage lalib:loot_storage $(id) run return run function lalib:player/info/not_found
$execute unless data storage lalib:loot_storage $(id).containers[0] run return run function lalib:player/info/no_containers_specific
execute unless items entity @s hotbar.1 * run return run function lalib:player/info/no_reference

data remove storage lalib:temp specific
$data modify storage lalib:temp specific.id set value "$(id)"
$data modify storage lalib:temp specific.reload set value $(reload)
$data modify storage lalib:temp specific.override set value $(override)
data modify storage lalib:temp specific.i set value 0
function lalib:specific/reference

scoreboard players set #total lalib.main 0
scoreboard players set #stacks lalib.main 0
scoreboard players set #index lalib.main 0
function lalib:specific/replace/loop with storage lalib:temp specific

function lalib:specific/success

# reload management area
scoreboard players set #silent lalib.main 1
execute if score #total lalib.main matches 1.. if data storage lalib:temp specific{reload:1} run function lalib:api/load_manage with storage lalib:temp specific
scoreboard players set #silent lalib.main 0

data remove storage lalib:temp specific
