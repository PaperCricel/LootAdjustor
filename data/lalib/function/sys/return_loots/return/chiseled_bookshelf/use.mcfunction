
data modify storage lalib:temp update set value {facing:"east",slot0:"false",slot1:"false",slot2:"false",slot3:"false",slot4:"false",slot5:"false"}

function lalib:sys/return_loots/return/chiseled_bookshelf/facing
function lalib:sys/return_loots/return/chiseled_bookshelf/occupied
function lalib:sys/return_loots/return/chiseled_bookshelf/replace with storage lalib:temp update
data modify block ~ ~ ~ Items set from storage lalib:temp return.containers[0].Items

data remove storage lalib:temp update