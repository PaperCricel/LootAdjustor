## (exe) marker

# if (rarity is unused) :
$execute unless data storage lalib:temp curr_storage.r$(n)[0] run return run function lalib:manage/load/rarity/next

$data modify storage lalib:temp curr_storage.containers set from storage lalib:temp curr_storage.r$(n)
$data remove storage lalib:temp curr_storage.r$(n)

# banner
execute at @s positioned ^ ^ ^1 run function lalib:manage/load/rarity/banner with storage lalib:temp banner
execute if score #pass lalib.main matches 0 run return fail

# containers behind the banner
scoreboard players set #curr_length lalib.main 0
execute at @s positioned ^ ^ ^2 run function lalib:manage/load/rarity/loop
execute if score #pass lalib.main matches 0 run return fail

# break line between rarities
function lalib:manage/load/rarity/break
return run function lalib:manage/load/rarity/next
