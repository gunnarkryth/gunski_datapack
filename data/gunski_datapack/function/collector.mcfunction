execute at @s if block ~ ~ ~ air if entity @e[type=item,nbt={Item:{id:"minecraft:hopper",count:1}},distance=..1, sort=nearest,limit=1] run data merge entity @e[type=item,nbt={Item:{id:"minecraft:hopper",count:1}},distance=..1, sort=nearest,limit=1] {Item:{id:"minecraft:ghast_spawn_egg",count:1,components:{"minecraft:item_name":'{"italic":false,"text":"Collector"}',"minecraft:lore":['{"text":"Like a hopper but special and more finicky."}'],"minecraft:custom_model_data":1000,"minecraft:entity_data":{id:"minecraft:item_display",width:1.001f,height:1.001f,Tags:["collector","new_collector"],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":1000}}}}}}


function gunski_datapack:collector_teleport


execute at @s if block ~ ~ ~ air run playsound block.glass.break block @a ~ ~ ~ 1 1
execute at @s if block ~ ~ ~ air run kill @s
