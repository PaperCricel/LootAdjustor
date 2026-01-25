
$give @s paper[\
    item_model="black_bundle",\
    item_name=[{"text": "Container Grabber ","color": "white"},{"text":"($(id))","color":"gray"}],\
    custom_data={"lalib":{"item":"block_finder","id":"$(id)"}},\
    enchantments={"lalib:left_click":1},\
    enchantment_glint_override=false,\
    tooltip_display={"hidden_components": ["enchantments","attribute_modifiers"]},\
    piercing_weapon={},\
    max_stack_size=1,\
    attribute_modifiers=[{id:"minecraft:weapon.mainhand",type:"block_interaction_range",amount:-1,operation:"add_multiplied_total",slot:"mainhand"},{id:"minecraft:weapon.mainhand",type:"entity_interaction_range",amount:-1,operation:"add_multiplied_total",slot:"mainhand"}],\
    consumable={consume_seconds:0.05,animation:"none",sound:"intentionally_empty",has_consume_particles:false},\
    attack_range={max_reach:64,min_reach:64,max_creative_reach:64,min_creative_reach:64},\
]