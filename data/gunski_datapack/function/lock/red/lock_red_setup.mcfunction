execute as @e[tag=new_lock_red] run function gunski_datapack:lock/lock_randomize
execute as @e[tag=lock_1] run scoreboard players set @s lock_difficulty 1
execute as @e[tag=lock_2] run scoreboard players set @s lock_difficulty 2
execute as @e[tag=lock_3] run scoreboard players set @s lock_difficulty 3
execute as @e[tag=lock_30] run scoreboard players set @s lock_difficulty 30
execute as @e[tag=new_lock_red] run tag @s remove lock_1
execute as @e[tag=new_lock_red] run tag @s remove lock_2
execute as @e[tag=new_lock_red] run tag @s remove lock_3
execute as @e[tag=new_lock_red] run tag @s remove lock_30


# Single chest
execute as @e[tag=new_lock_red] at @s if block ~ ~-0.8 ~ chest run tp @s ~ ~-0.9 ~

execute as @e[tag=new_lock_red] at @s if block ~ ~.1 ~ chest[facing=north] run summon item_display ~ ~0.7 ~-0.43 {Tags:["lock","lock_red"],Rotation:[-180f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":911}}}
execute as @e[tag=new_lock_red] at @s if block ~ ~.1 ~ chest[facing=east] run summon item_display ~0.43 ~0.7 ~ {Tags:["lock","lock_red"],Rotation:[-90f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":911}}}
execute as @e[tag=new_lock_red] at @s if block ~ ~.1 ~ chest[facing=south] run summon item_display ~ ~0.7 ~0.43 {Tags:["lock","lock_red"],Rotation:[0f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":911}}}
execute as @e[tag=new_lock_red] at @s if block ~ ~.1 ~ chest[facing=west] run summon item_display ~-0.43 ~0.7 ~ {Tags:["lock","lock_red"],Rotation:[90f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":911}}}

# Double chest
execute as @e[tag=new_lock_red] at @s if block ~ ~.1 ~ chest[type=right] run data merge entity @n[type=item_display,tag=lock_red] {width:2.1}



execute as @e[tag=new_lock_red] at @s if block ~ ~.1 ~ chest run tag @s remove new_lock_red

# Door
execute as @e[tag=new_lock_red] at @s unless block ~ ~-0.8 ~ chest run tp @s ~ ~-1 ~

execute as @e[tag=new_lock_red] at @s if block ~ ~ ~ #doors[facing=south] run summon item_display ~-0.281 ~1.23 ~-0.5 {Tags:["lock","lock_red"],Rotation:[-180f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":911}}}
execute as @e[tag=new_lock_red] at @s if block ~ ~ ~ #doors[facing=west] run summon item_display ~0.5 ~1.23 ~0.281 {Tags:["lock","lock_red"],Rotation:[-90f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":911}}}
execute as @e[tag=new_lock_red] at @s if block ~ ~ ~ #doors[facing=north] run summon item_display ~0.281 ~1.23 ~0.5 {Tags:["lock","lock_red"],Rotation:[0f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":911}}}
execute as @e[tag=new_lock_red] at @s if block ~ ~ ~ #doors[facing=east] run summon item_display ~-0.5 ~1.23 ~-0.281 {Tags:["lock","lock_red"],Rotation:[90f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":911}}}

execute as @e[tag=lock_red] at @s if block ~ ~ ~ #doors run data merge entity @s {height:2.1f}


execute as @e[tag=new_lock_red] run tag @s remove new_lock_red


