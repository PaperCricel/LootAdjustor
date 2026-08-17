
# switch item back
summon item ~ ~ ~ {Tags:[lalib.player.temp_item],Item:{id:barrier,components:{item_model:"air"}}}
item replace entity @e[tag=lalib.player.temp_item,type=item,limit=1] contents from entity @s weapon.mainhand
tag @e[tag=lalib.player.temp_item,type=item,limit=1] remove lalib.player.temp_item
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

data modify storage lalib:temp offhand.id set from entity @s SelectedItem.components."minecraft:custom_data".lalib.id
function lalib:player/open_settings/interpret with storage lalib:temp offhand

advancement revoke @s only lalib:open_settings