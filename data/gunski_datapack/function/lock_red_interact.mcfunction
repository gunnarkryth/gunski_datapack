# New lock_red


# Increase value
execute as @e[tag=lock_red] on target run scoreboard players add @s lock_pick_number 1
execute as @e[tag=lock_red] on target run playsound minecraft:block.copper_bulb.turn_on block @s ~ ~ ~ 10 0


# Check if correct
execute as @e[tag=lock_red] if score @s randomize_lock = @p lock_pick_number run playsound minecraft:block.copper_bulb.turn_on block @a ~ ~ ~ 10 0.5
execute as @e[tag=lock_red] at @s if score @s randomize_lock = @p lock_pick_number on attacker run scoreboard players remove @n[tag=lock_red] lock_difficulty 1
# execute as @e[tag=lock_red] if score @s randomize_lock = @p lock_pick_number on attacker run scoreboard players remove @n[type=interaction,tag=lock_red] lock_difficulty 1

# Unlock


execute as @e[tag=lock_red,scores={lock_difficulty=0}] run playsound block.chain.break block @a ~ ~ ~ 10 1
execute as @e[tag=lock_red,scores={lock_difficulty=0}] at @s run kill @n[type=item_display,tag=lock_red]
execute as @e[tag=lock_red,scores={lock_difficulty=0}] at @s run kill @s



# Failure
function gunski_datapack:lock_fail


# Randomize
execute as @e[tag=lock_red] on attacker run function gunski_datapack:randomize_lock
execute as @e[tag=lock_red] on attacker run scoreboard players set @s lock_pick_number 1

# Loop selection
scoreboard players set @a[scores={lock_pick_number=10..}] lock_pick_number 1
