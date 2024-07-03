# Select race
execute as @e[tag=select_race] on target run scoreboard players add @s select_race 1
execute as @e[tag=select_race] on attacker run scoreboard players remove @s select_race 1






# Loop selection
scoreboard players set @a[scores={select_race=5..}] select_race 1
scoreboard players set @a[scores={select_race=..0}] select_race 4



# Confirm
tag @a[scores={select_race=1},tag=confirm] add human
tag @a[scores={select_race=2},tag=confirm] add elf
tag @a[scores={select_race=3},tag=confirm] add dwarf
tag @a[scores={select_race=4},tag=confirm] add gnome

tag @a[tag=confirm] remove confirm