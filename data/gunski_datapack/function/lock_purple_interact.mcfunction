# Unlock
execute as @e[tag=lock_purple] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on attacker run scoreboard players set @n[type=interaction,tag=lock_purple] lock_difficulty 0
execute as @e[tag=lock_purple] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on attacker unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
execute as @e[tag=lock_purple] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on target run scoreboard players set @n[type=interaction,tag=lock_purple] lock_difficulty 0
execute as @e[tag=lock_purple] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on target unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

execute as @e[tag=lock_purple,scores={lock_difficulty=0}] run playsound block.chain.break block @a ~ ~ ~ 10 1
execute as @e[tag=lock_purple,scores={lock_difficulty=0}] at @s run kill @n[type=item_display,tag=lock_purple]
execute as @e[tag=lock_purple,scores={lock_difficulty=0}] at @s run kill @s