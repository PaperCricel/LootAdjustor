
data modify storage lalib:temp update set value {slot0:"false",slot1:"false",slot2:"false",slot3:"false",slot4:"false",slot5:"false"}

function lalib:sys/load_management/specific/chiseled_bookshelf/occupied
function lalib:sys/load_management/specific/chiseled_bookshelf/replace with storage lalib:temp update

data remove storage lalib:temp update