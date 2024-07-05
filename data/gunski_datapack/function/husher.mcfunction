execute at @s if block ~ ~ ~ air if entity @e[type=item,nbt={Item:{id:"minecraft:cobbled_deepslate_wall",count:1}},distance=..1, sort=nearest,limit=1] run data merge entity @e[type=item,nbt={Item:{id:"minecraft:cobbled_deepslate_wall",count:1}},distance=..1, sort=nearest,limit=1] {Item:{id:"minecraft:ghast_spawn_egg",count:1,components:{"minecraft:item_name":'{"italic":false,"text":"Husher"}',"minecraft:lore":['{"text":". . ."}'],"minecraft:custom_model_data":1010,"minecraft:entity_data":{id:"minecraft:item_display",width:1.001f,height:2.001f,Tags:["husher","new_husher"],item:{id:"minecraft:decorated_pot",count:1,components:{"minecraft:custom_model_data":1010}}}}}}

stopsound @a * 

execute at @s if block ~ ~ ~ air run playsound entity.breeze.land block @a ~ ~ ~ 1 0

execute as @s at @s if block ~ ~ ~ cobbled_deepslate_wall run setblock ~ ~ ~ cobbled_deepslate_wall[north=none,east=none,south=none,west=none]
execute as @e[tag=husher] at @s if block ~ ~-.5 ~ air run kill @s
