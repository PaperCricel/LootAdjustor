
$execute unless loaded $(x) $(y) $(z) run return run schedule function lalib:highlight/is_loaded/await 1t

data remove storage lalib:temp highlight.queue[0]
execute if data storage lalib:temp highlight.queue[0] run return run function lalib:highlight/is_loaded/loop with storage lalib:temp highlight.queue[0]

function lalib:highlight/apply/use
