
$execute positioned $(x) $(y) $(z) run kill @e[type=item_display,tag=lalib.highlight,distance=..0.1]
$execute if data storage lalib:temp highlight{mode: "summon"} run summon item_display $(x) $(y) $(z) {Tags: ["lalib.highlight"], item: {id: "glass"}, Glowing: 1b, view_range: 4.0f, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.5f, 0.0f]}, teleport_duration: 0, brightness: {block: 15, sky: 15}}

data remove storage lalib:temp highlight.queue[0]
execute if data storage lalib:temp highlight.queue[0] run return run function lalib:highlight/apply/loop with storage lalib:temp highlight.queue[0]

function lalib:highlight/unforceload/use
