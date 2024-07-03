# Game master
execute at @a[tag=game_master] run data merge entity @n[type=interaction,distance=..2,tag=lock] {width:0f,height:0f}
execute at @a[tag=game_master] run data merge entity @n[type=interaction,distance=2..3,tag=lock] {width:1.1f,height:1.1f}



execute as @e[tag=new_lock] run function gunski_datapack:randomize_lock
execute as @e[tag=lock_1] run scoreboard players set @s lock_difficulty 1
execute as @e[tag=lock_2] run scoreboard players set @s lock_difficulty 2
execute as @e[tag=lock_3] run scoreboard players set @s lock_difficulty 3
execute as @e[tag=new_lock] run tag @s remove lock_1
execute as @e[tag=new_lock] run tag @s remove lock_2
execute as @e[tag=new_lock] run tag @s remove lock_3


# Single chest
execute as @e[tag=new_lock] at @s if block ~ ~-0.8 ~ chest run tp @s ~ ~-0.9 ~

execute as @e[tag=new_lock] at @s if block ~ ~.1 ~ chest[facing=north] run summon item_display ~ ~0.7 ~-0.43 {Tags:["lock"],Rotation:[-180f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":902}}}
execute as @e[tag=new_lock] at @s if block ~ ~.1 ~ chest[facing=east] run summon item_display ~0.43 ~0.7 ~ {Tags:["lock"],Rotation:[-90f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":902}}}
execute as @e[tag=new_lock] at @s if block ~ ~.1 ~ chest[facing=south] run summon item_display ~ ~0.7 ~0.43 {Tags:["lock"],Rotation:[0f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":902}}}
execute as @e[tag=new_lock] at @s if block ~ ~.1 ~ chest[facing=west] run summon item_display ~-0.43 ~0.7 ~ {Tags:["lock"],Rotation:[90f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":902}}}

# Double chest
execute as @e[tag=new_lock] at @s if block ~ ~.1 ~ chest[type=right] run data merge entity @n[type=item_display,tag=lock] {width:2.1}



execute as @e[tag=new_lock] at @s if block ~ ~.1 ~ chest run tag @s remove new_lock

# Door
execute as @e[tag=new_lock] at @s unless block ~ ~-0.8 ~ chest run tp @s ~ ~-1 ~

execute as @e[tag=new_lock] at @s if block ~ ~ ~ #doors[facing=south] run summon item_display ~-0.281 ~1.23 ~-0.5 {Tags:["lock"],Rotation:[-180f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":902}}}
execute as @e[tag=new_lock] at @s if block ~ ~ ~ #doors[facing=west] run summon item_display ~0.5 ~1.23 ~0.281 {Tags:["lock"],Rotation:[-90f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":902}}}
execute as @e[tag=new_lock] at @s if block ~ ~ ~ #doors[facing=north] run summon item_display ~0.281 ~1.23 ~0.5 {Tags:["lock"],Rotation:[0f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":902}}}
execute as @e[tag=new_lock] at @s if block ~ ~ ~ #doors[facing=east] run summon item_display ~-0.5 ~1.23 ~-0.281 {Tags:["lock"],Rotation:[90f,0f],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":902}}}

execute as @e[tag=lock] at @s if block ~ ~ ~ #doors run data merge entity @s {height:2.1f}


execute as @e[tag=new_lock] run tag @s remove new_lock


# Remove stray locks
execute as @e[tag=lock] at @s unless entity @n[type=item_display,tag=lock,distance=..1.5] run kill @s