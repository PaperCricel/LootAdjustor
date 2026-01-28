
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=east] run return run data modify storage lalib:temp update.facing set value east
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=west] run return run data modify storage lalib:temp update.facing set value west
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=north] run return run data modify storage lalib:temp update.facing set value north
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=south] run return run data modify storage lalib:temp update.facing set value south