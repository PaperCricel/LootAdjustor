
# find block
execute as @a[predicate=lalib:player/find_block] at @s run function lalib:sys/player/find_block/main
execute as @a[scores={lalib.trigger=1..}] at @s run function lalib:sys/player/trigger