
# outdated : container is gone
execute unless function lalib:import_loots/return/is_container run return run function lalib:import_loots/return/outdated

execute if data storage lalib:temp return.containers[0].Items run data modify block ~ ~ ~ Items set from storage lalib:temp return.containers[0].Items
execute if data storage lalib:temp return.containers[0].item run data modify block ~ ~ ~ item set from storage lalib:temp return.containers[0].item
execute if block ~ ~ ~ chiseled_bookshelf run function lalib:import_loots/return/chiseled_bookshelf/use

# fx
execute positioned ~ ~0.5 ~ run function lalib:player/find_block/fx/success