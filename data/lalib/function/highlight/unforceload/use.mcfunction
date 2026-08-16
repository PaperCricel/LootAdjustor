
execute if data storage lalib:temp highlight.added[0] run function lalib:highlight/unforceload/loop with storage lalib:temp highlight.added[0]

# clear
function lalib:highlight/success
data remove storage lalib:temp highlight
