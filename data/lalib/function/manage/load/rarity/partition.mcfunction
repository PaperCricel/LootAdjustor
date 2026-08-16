## usage : split containers into r0 ~ r9, keeping their original order

data modify storage lalib:temp curr_storage.r1 append from storage lalib:temp curr_storage.containers[{rarity:1}]
data remove storage lalib:temp curr_storage.containers[{rarity:1}]
data modify storage lalib:temp curr_storage.r2 append from storage lalib:temp curr_storage.containers[{rarity:2}]
data remove storage lalib:temp curr_storage.containers[{rarity:2}]
data modify storage lalib:temp curr_storage.r3 append from storage lalib:temp curr_storage.containers[{rarity:3}]
data remove storage lalib:temp curr_storage.containers[{rarity:3}]
data modify storage lalib:temp curr_storage.r4 append from storage lalib:temp curr_storage.containers[{rarity:4}]
data remove storage lalib:temp curr_storage.containers[{rarity:4}]
data modify storage lalib:temp curr_storage.r5 append from storage lalib:temp curr_storage.containers[{rarity:5}]
data remove storage lalib:temp curr_storage.containers[{rarity:5}]
data modify storage lalib:temp curr_storage.r6 append from storage lalib:temp curr_storage.containers[{rarity:6}]
data remove storage lalib:temp curr_storage.containers[{rarity:6}]
data modify storage lalib:temp curr_storage.r7 append from storage lalib:temp curr_storage.containers[{rarity:7}]
data remove storage lalib:temp curr_storage.containers[{rarity:7}]
data modify storage lalib:temp curr_storage.r8 append from storage lalib:temp curr_storage.containers[{rarity:8}]
data remove storage lalib:temp curr_storage.containers[{rarity:8}]
data modify storage lalib:temp curr_storage.r9 append from storage lalib:temp curr_storage.containers[{rarity:9}]
data remove storage lalib:temp curr_storage.containers[{rarity:9}]

# rest : rarity 0 or never stamped
data modify storage lalib:temp curr_storage.r0 append from storage lalib:temp curr_storage.containers[]
data remove storage lalib:temp curr_storage.containers
