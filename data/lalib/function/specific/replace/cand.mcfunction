
data modify storage lalib:temp specific.slot set from storage lalib:temp specific.cand[0].Slot
data modify storage lalib:temp specific.probe set from storage lalib:temp specific.cand[0]
data remove storage lalib:temp specific.probe.Slot
data remove storage lalib:temp specific.probe.count
function lalib:specific/is_same

execute if score #differ lalib.main matches 0 run function lalib:specific/replace/apply with storage lalib:temp specific

# loop
data remove storage lalib:temp specific.cand[0]
execute if data storage lalib:temp specific.cand[0] run function lalib:specific/replace/cand with storage lalib:temp specific
