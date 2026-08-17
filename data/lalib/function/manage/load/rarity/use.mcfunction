## (exe) marker

# banner facing
data modify storage lalib:temp banner.rot set from storage lalib:temp rot

function lalib:manage/load/rarity/partition

scoreboard players set #rarity lalib.main -1
function lalib:manage/load/rarity/next

data remove storage lalib:temp banner
