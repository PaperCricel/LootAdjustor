## usage : a loot table has no contents to lay out, so stand a sign in for it

$setblock ~ ~ ~ oak_sign[rotation=$(rot)]
$data modify block ~ ~ ~ front_text.messages set value ["Loot Table","$(LootTable)","",""]
