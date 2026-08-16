## usage : rarity layout is used as soon as one container holds a non-zero rarity

scoreboard players set #rarity_mode lalib.main 0

execute if data storage lalib:temp curr_storage.containers[{rarity:1}] run scoreboard players set #rarity_mode lalib.main 1
execute if data storage lalib:temp curr_storage.containers[{rarity:2}] run scoreboard players set #rarity_mode lalib.main 1
execute if data storage lalib:temp curr_storage.containers[{rarity:3}] run scoreboard players set #rarity_mode lalib.main 1
execute if data storage lalib:temp curr_storage.containers[{rarity:4}] run scoreboard players set #rarity_mode lalib.main 1
execute if data storage lalib:temp curr_storage.containers[{rarity:5}] run scoreboard players set #rarity_mode lalib.main 1
execute if data storage lalib:temp curr_storage.containers[{rarity:6}] run scoreboard players set #rarity_mode lalib.main 1
execute if data storage lalib:temp curr_storage.containers[{rarity:7}] run scoreboard players set #rarity_mode lalib.main 1
execute if data storage lalib:temp curr_storage.containers[{rarity:8}] run scoreboard players set #rarity_mode lalib.main 1
execute if data storage lalib:temp curr_storage.containers[{rarity:9}] run scoreboard players set #rarity_mode lalib.main 1
