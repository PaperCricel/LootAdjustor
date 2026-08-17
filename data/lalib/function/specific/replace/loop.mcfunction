
$execute unless data storage lalib:loot_storage $(id).containers[$(i)] run return 0

data modify storage lalib:temp specific.cand set value []
$data modify storage lalib:temp specific.cand append from storage lalib:loot_storage $(id).containers[$(i)].Items[$(filter)]
execute if data storage lalib:temp specific.cand[0] run function lalib:specific/replace/cand with storage lalib:temp specific

$execute if data storage lalib:loot_storage $(id).containers[$(i)].item run function lalib:specific/replace/pot with storage lalib:temp specific

# loop
scoreboard players add #index lalib.main 1
execute store result storage lalib:temp specific.i int 1 run scoreboard players get #index lalib.main
function lalib:specific/replace/loop with storage lalib:temp specific
