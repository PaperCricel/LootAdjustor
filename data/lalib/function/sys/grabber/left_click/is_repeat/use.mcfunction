
data modify storage lalib:temp current.x set from block ~ ~ ~ x
data modify storage lalib:temp current.y set from block ~ ~ ~ y
data modify storage lalib:temp current.z set from block ~ ~ ~ z
return run function lalib:sys/grabber/left_click/is_repeat/2 with storage lalib:temp current