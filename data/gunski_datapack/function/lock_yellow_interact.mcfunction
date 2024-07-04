# New lock_yellow


# Increase value
execute as @e[tag=lock_yellow] on target run scoreboard players add @s lock_pick_number 1
execute as @e[tag=lock_yellow] on target run playsound minecraft:block.copper_bulb.turn_on block @s ~ ~ ~ 10 0


# Check if correct
execute as @e[tag=lock_yellow] if score @s randomize_lock = @p lock_pick_number run playsound minecraft:block.copper_bulb.turn_on block @a ~ ~ ~ 10 0.5
execute as @e[tag=lock_yellow] at @s if score @s randomize_lock = @p lock_pick_number on attacker run scoreboard players remove @n[tag=lock_yellow] lock_difficulty 1
# execute as @e[tag=lock_yellow] if score @s randomize_lock = @p lock_pick_number on attacker run scoreboard players remove @n[type=interaction,tag=lock_yellow] lock_difficulty 1

# Unlock
execute as @e[tag=lock_yellow] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_yellow:1}}}}] on attacker run scoreboard players set @n[type=interaction,tag=lock_yellow] lock_difficulty 0
execute as @e[tag=lock_yellow] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_yellow:1}}}}] on attacker unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
execute as @e[tag=lock_yellow] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_yellow:1}}}}] on target run scoreboard players set @n[type=interaction,tag=lock_yellow] lock_difficulty 0
execute as @e[tag=lock_yellow] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_data":{key_yellow:1}}}}] on target unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air


execute as @e[tag=lock_yellow,scores={lock_difficulty=0}] run playsound block.chain.break block @a ~ ~ ~ 10 1
execute as @e[tag=lock_yellow,scores={lock_difficulty=0}] at @s run kill @n[type=item_display,tag=lock_yellow]
# execute as @e[type=item_display,tag=lock_yellow] at @s if entity @n[tag=lock_yellow,scores={lock_difficulty=0},distance=..1.5] run particle block{block_state:"minecraft:gold_block"} ^ ^2 ^2 0.3 0.3 0.3 0 30 normal
execute as @e[tag=lock_yellow,scores={lock_difficulty=0}] at @s run kill @s



# Failure
function gunski_datapack:lock_fail


# Randomize
execute as @e[tag=lock_yellow] on attacker run function gunski_datapack:randomize_lock
execute as @e[tag=lock_yellow] on attacker run scoreboard players set @s lock_pick_number 1

# Loop selection
scoreboard players set @a[scores={lock_pick_number=10..}] lock_pick_number 1
