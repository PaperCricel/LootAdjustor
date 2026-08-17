## usage : #differ is 0 when specific.probe equals specific.filter

data modify storage lalib:temp specific.cmp set from storage lalib:temp specific.filter
execute store success score #differ lalib.main run data modify storage lalib:temp specific.cmp set from storage lalib:temp specific.probe
