# Level
execute as @a run function gunski_datapack:xp

# Killstreak
execute as @a[scores={kills=1..}] unless entity @s[tag=kill_streak] run schedule function gunski_datapack:kills_reset 5s
function gunski_datapack:kill_streak

# Barbarian
execute as @a[tag=class_barbarian] run function gunski_datapack:class_barbarian

# Race
function gunski_datapack:select_race

# Race reset
execute as @e[tag=select_race] on target run function gunski_datapack:race_reset
execute as @e[tag=select_race] on attacker run function gunski_datapack:race_reset

# Race select
execute as @a[scores={select_race=1}] run function gunski_datapack:human
execute as @a[scores={select_race=2}] run function gunski_datapack:elf
execute as @a[scores={select_race=3}] run function gunski_datapack:dwarf
execute as @a[scores={select_race=4}] run function gunski_datapack:gnome

# Locks
# Yellow
execute as @e[tag=lock_yellow] on target run function gunski_datapack:lock_yellow_interact
execute as @e[tag=lock_yellow] on attacker run function gunski_datapack:lock_yellow_interact
function gunski_datapack:lock_yellow_setup
# Red
execute as @e[tag=lock_red] on target run function gunski_datapack:lock_red_interact
execute as @e[tag=lock_red] on attacker run function gunski_datapack:lock_red_interact
function gunski_datapack:lock_red_setup
# Purple
execute as @e[tag=lock_purple] on target run function gunski_datapack:lock_purple_interact
execute as @e[tag=lock_purple] on attacker run function gunski_datapack:lock_purple_interact
function gunski_datapack:lock_purple_setup



# Coins
execute as @e[type=item,nbt={OnGround:1b, Item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_model_data":901}}}] at @s unless entity @s[tag=activated] run function gunski_datapack:coin




execute as @e[type=minecraft:interaction] run function gunski_datapack:interaction