
scoreboard players add #stacks lalib.main 1
execute store result score #amount lalib.main run data get storage lalib:temp specific.cand[0].count
scoreboard players operation #total lalib.main += #amount lalib.main
