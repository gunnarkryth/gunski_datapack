# Unlock
execute as @e[tag=lock_purple] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on attacker run scoreboard players remove @n[type=interaction,tag=lock_purple] lock_difficulty 1

execute as @e[tag=lock_purple] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on attacker unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

execute as @e[tag=lock_purple] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on target run scoreboard players remove @n[type=interaction,tag=lock_purple] lock_difficulty 1

execute as @e[tag=lock_purple] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on target unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air



execute as @e[tag=lock_purpel] unless entity @s[scores={lock_difficulty=0}] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on attacker run playsound entity.player.levelup block @a ~ ~ ~ 0.3 1.3
execute as @e[tag=lock_purple] unless entity @s[scores={lock_difficulty=0}] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on target run playsound entity.player.levelup block @a ~ ~ ~ 0.3 1.3

execute as @e[tag=lock_purple,scores={lock_difficulty=0}] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on attacker run playsound entity.player.levelup block @a ~ ~ ~ 0.3 1
execute as @e[tag=lock_purple,scores={lock_difficulty=0}] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_purple:1}}}}] on target run playsound entity.player.levelup block @a ~ ~ ~ 0.3 1