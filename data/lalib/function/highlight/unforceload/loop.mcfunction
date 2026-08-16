
$forceload remove $(x) $(z)

data remove storage lalib:temp highlight.added[0]
execute if data storage lalib:temp highlight.added[0] run return run function lalib:highlight/unforceload/loop with storage lalib:temp highlight.added[0]
