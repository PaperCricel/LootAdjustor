
data modify storage lalib:temp block set from storage lalib:temp curr_storage.containers[0]
data modify storage lalib:temp block.storage_id set from storage lalib:temp curr_storage.id
data modify storage lalib:temp block.id set string storage lalib:temp block.id 10

function lalib:sys/load_manage/setblock/2 with storage lalib:temp block

data remove storage lalib:temp block