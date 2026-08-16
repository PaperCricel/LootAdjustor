
$execute unless loaded $(x) $(y) $(z) run return fail

# if (is exist) :
scoreboard players reset fb086e24-29aa-44bc-b019-a4047df3eb50 lalib.main
$execute as fb086e24-29aa-44bc-b019-a4047df3eb50 run return run tp @s $(x) $(y) $(z)

# fb086e24-29aa-44bc-b019-a4047df3eb50
$summon item_display $(x) $(y) $(z) {UUID: [I;-83333596,699024572,-1340496892,2113137488], item: {id: "glass"}, Glowing: 1b, view_range: 2f, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.5f, 0.0f]}, teleport_duration: 0}