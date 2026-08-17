## usage : line 2~4 joined, so an id longer than one line can be typed across them

data modify storage lalib:temp sign set value {l1:"",l2:"",l3:""}
execute if data storage lalib:temp current.block.front_text.messages[1] run data modify storage lalib:temp sign.l1 set from storage lalib:temp current.block.front_text.messages[1]
execute if data storage lalib:temp current.block.front_text.messages[2] run data modify storage lalib:temp sign.l2 set from storage lalib:temp current.block.front_text.messages[2]
execute if data storage lalib:temp current.block.front_text.messages[3] run data modify storage lalib:temp sign.l3 set from storage lalib:temp current.block.front_text.messages[3]

# blank line 2 : keep the archived table
execute unless data storage lalib:temp sign{l1:""} run function lalib:controller/block/manage/sign/join with storage lalib:temp sign

data remove storage lalib:temp sign
