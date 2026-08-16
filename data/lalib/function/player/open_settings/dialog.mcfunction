
# open settings
$dialog show @s {"type": "minecraft:multi_action","title": "Loot Storage Settings","columns": 2,\
"inputs": [\
    {"type": "minecraft:text","key": "id","width": 100,"label": "Storage ID","initial": "$(id)","max_length": 100},\
    {"type": "minecraft:number_range","key": "max_width","label": {"text": "Management Width"},"start": 1,"end": 50,"step": 1,"initial": $(max_width)},\
    {"type": "minecraft:number_range","key": "rarity","label": {"text": "Controller's Loots Rarity"},"start": 0,"end": 9,"step": 1,"initial": $(rarity)}],\
"actions": [\
    {"label": ["",{"color":"#6eaaf0","text":"Relocate Management Center"}],"tooltip": ["",{"color":"gray","text":"Relocate the center of "},{"color":"#e8b764","text":"Management Area"},{"color":"gray","text":" at your current position."}],"action": {"type": "dynamic/run_command","template": "function lalib:api/relocate_center {id:\u0024(id)}"}},\
    {"label": ["",{"color":"#6eaaf0","text":"Save Storage Settings"}],"tooltip": ["",{"color":"gray","text":"Rarity is bound to this "},{"color":"#e8b764","text":"Loot Controller"},{"color":"gray","text":" alone, and is written to every container it saves. Once any container holds a non-zero rarity, "},{"color":"#e8b764","text":"Management Area"},{"color":"gray","text":" is loaded rarity by rarity, each led by a numbered banner."}],"action": {"type": "dynamic/run_command","template": "function lalib:api/save_settings {id:\u0024(id),max_width:\u0024(max_width),rarity:\u0024(rarity)}"}},\
    {"label": ["",{"color":"#f0cf6e","text":"Load Management Area"}],"tooltip": ["",{"color":"gray","text":"Center defaults to your position upon creating the "},{"color":"#e8b764","text":"Loot Storage"},{"color":"gray","text":". "},{"color":"red","text":"Ensure the center is at your desired location."}],"action": {"type": "dynamic/run_command","template": "function lalib:api/load_manage {id:\u0024(id)}"}},\
    {"label": ["",{"color":"#f0cf6e","text":"Import Loots to World"}],"action": {"type": "dynamic/run_command","template": "function lalib:api/import_loots {id:\u0024(id)}"}},\
    {"label": ["",{"color":"#f0a26e","text":"$(highlight) Loots Location"}],"tooltip": ["",{"color":"gray","text":"Mark every container saved in this "},{"color":"#e8b764","text":"Loot Storage"},{"color":"gray","text":" with a glowing block, so you can spot them through walls. Click it again to clear every marker."}],"action": {"type": "dynamic/run_command","template": "function lalib:api/$(highlight_api) {id:\u0024(id)}"}},\
    {"label": ["",{"color":"#f0746e","text":"Remove Loot Storage"}],"tooltip": ["",{"color":"gray","text":"Once you delete a "},{"color":"#e8b764","text":"Loot Storage"},{"color":"gray","text":", there is no going back. "},{"color":"red","text":"Please be certain."}],"action": {"type": "dynamic/run_command","template": "function lalib:api/remove_storage {id:\u0024(id)}"}}\
]}
