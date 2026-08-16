
execute if data storage lalib:temp highlight{mode:"summon"} run function lalib:player/info/highlight_on
execute if data storage lalib:temp highlight{mode:"kill"} run function lalib:player/info/highlight_off

tag @a[tag=lalib.highlight.user] remove lalib.highlight.user
