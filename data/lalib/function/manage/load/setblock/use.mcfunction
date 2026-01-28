## usage : restore container from storage

data modify storage lalib:temp block set from storage lalib:temp curr_storage.containers[0]
data modify storage lalib:temp block.id set string storage lalib:temp block.id 10

function lalib:manage/load/setblock/2 with storage lalib:temp block

data remove storage lalib:temp block