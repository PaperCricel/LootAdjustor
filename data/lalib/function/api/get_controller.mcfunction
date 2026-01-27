
give @s paper[\
    item_model="brush",\
    item_name=[{"text": "Storage Controller","color": "white"}],\
    lore=[[{"italic":false,"color":"white","text":""},{"color":"gray","text":"Left Click:"}],[{"italic":false,"color":"white","text":""},{"color":"gray","text":"◆ "},{"color":"#e8b764","text":"Save"},{"color":"gray","text":" container to "},{"color":"#e8b764","text":"Loot Storage"},{"color":"gray","text":"."}],[{"italic":false,"color":"white","text":""}],[{"italic":false,"color":"white","text":""},{"color":"gray","text":"Right Click:"}],[{"italic":false,"color":"white","text":""},{"color":"gray","text":"◆ "},{"color":"#e8b764","text":"Remove"},{"color":"gray","text":" container from "},{"color":"#e8b764","text":"Loot Storage"},{"color":"gray","text":"."}]],\
    custom_data={"lalib":{"item":"controller"}},\
    enchantments={"lalib:left_click":1,"lalib:right_click":1},\
    enchantment_glint_override=false,\
    tooltip_display={"hidden_components": ["enchantments","attribute_modifiers"]},\
    piercing_weapon={},\
    max_stack_size=1,\
    attribute_modifiers=[{id:"minecraft:weapon.mainhand",type:"block_interaction_range",amount:-1,operation:"add_multiplied_total",slot:"mainhand"},{id:"minecraft:weapon.mainhand",type:"entity_interaction_range",amount:-1,operation:"add_multiplied_total",slot:"mainhand"}],\
    consumable={consume_seconds:0.05,animation:"none",sound:"intentionally_empty",has_consume_particles:false},\
    attack_range={max_reach:64,min_reach:64,max_creative_reach:64,min_creative_reach:64},\
]