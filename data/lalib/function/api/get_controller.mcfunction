
$execute unless data storage lalib:loot_storage $(id) run return run function lalib:player/info/not_found

$give @s paper[\
    item_model="black_bundle",\
    item_name=[{"text": "Loot Controller ","color": "white"},{"text":"($(id))","color":"gray"}],\
    lore=[[{italic:false,color:"white",text:""},{color:"dark_gray",text:"◆ "},{color:"dark_gray",text:"                                         ",strikethrough:true},{color:"dark_gray",text:" ◆"}],[{italic:false,color:"white",text:""},{color:"gray",text:"ʟᴇꜰᴛ ᴄʟɪᴄᴋ :"}],[{italic:false,color:"white",text:""},{color:"#E8B764",text:"Add/Save container"},{color:"gray",text:" to Loot Storage."}],[{italic:false,color:"white",text:""}],[{italic:false,color:"white",text:""},{color:"gray",text:"ʀɪɢʜᴛ ᴄʟɪᴄᴋ :"}],[{italic:false,color:"white",text:""},{color:"#E8B764",text:"Remove container"},{color:"gray",text:" from Loot Storage."}],[{italic:false,color:"white",text:""}],[{italic:false,color:"white",text:""},{color:"gray",text:"ꜱʜɪꜰᴛ + ʀɪɢʜᴛ ᴄʟɪᴄᴋ :"}],[{italic:false,color:"white",text:""},{color:"#E8B764",text:"Lift container"},{color:"gray",text:" to other location."}],[{italic:false,color:"white",text:""}],[{italic:false,color:"white",text:""},{color:"gray",text:"ᴡʜᴇɴ ɪɴ ᴏꜰꜰ ʜᴀɴᴅ :"}],[{italic:false,color:"white",text:""},{color:"#E8B764",text:"Open settings"},{color:"gray",text:" about Loot Storage."}],[{italic:false,color:"white",text:""},{color:"dark_gray",text:"◆ "},{color:"dark_gray",text:"                                         ",strikethrough:true},{color:"dark_gray",text:" ◆"}]],\
    custom_data={"lalib":{"item":"controller","id":"$(id)"}},\
    enchantments={"lalib:left_click":1,"lalib:right_click":1},\
    enchantment_glint_override=false,\
    tooltip_display={"hidden_components": ["enchantments","attribute_modifiers"]},\
    piercing_weapon={},\
    max_stack_size=1,\
    attribute_modifiers=[{id:"minecraft:weapon.mainhand",type:"block_interaction_range",amount:-1,operation:"add_multiplied_total",slot:"mainhand"},{id:"minecraft:weapon.mainhand",type:"entity_interaction_range",amount:-1,operation:"add_multiplied_total",slot:"mainhand"}],\
    consumable={consume_seconds:0.05,animation:"none",sound:"intentionally_empty",has_consume_particles:false},\
    attack_range={max_reach:64,min_reach:64,max_creative_reach:64,min_creative_reach:64},\
]