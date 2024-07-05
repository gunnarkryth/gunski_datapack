execute at @s[tag=new_husher] run setblock ~ ~ ~ cobbled_deepslate_wall keep
execute as @s[tag=new_husher] at @s unless block ~ ~ ~ cobbled_deepslate_wall run give @p ghast_spawn_egg[item_name='{"italic":false,"text":"Husher"}',lore=['{"text":". . ."}'],custom_model_data=1010,entity_data={id:"minecraft:item_display",Tags:["husher","new_husher"],item:{id:"minecraft:decorated_pot",count:1,components:{"minecraft:custom_model_data":1010}}}] 1 


execute as @s[tag=new_husher] at @s unless block ~ ~ ~ cobbled_deepslate_wall run kill @s


data merge entity @s {Rotation:[-180f,0f]}

# execute at @s run setblock ~ ~ ~ decorated_pot

execute at @s[tag=new_husher] run tp @s ~ ~0.73 ~

tag @s remove new_husher









