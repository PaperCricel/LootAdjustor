
$data remove storage lalib:loot_storage $(id)
$clear @a paper[custom_data~{lalib:{id:"$(id)"}}]

# fx
$title @s actionbar ["",{color:"dark_aqua",bold:true,text:"[LALIB] "},{color:"gray",text:"Remove loot storage "},{color:"white",text:"$(id)"},{color:"gray",text:"."}]
playsound minecraft:block.ender_chest.close master @a ~ ~ ~ 1 0