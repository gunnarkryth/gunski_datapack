# Normal
execute store result score @e[tag=lock] randomize_lock run random value 1..9
execute store result score @e[tag=lock,scores={randomize_lock=10..}] randomize_lock run scoreboard players set @s randomize_lock 9
execute store result score @e[tag=lock,scores={randomize_lock=..0}] randomize_lock run scoreboard players set @s randomize_lock 1

# Red
execute store result score @e[tag=lock_red] randomize_lock run random value 1..9
execute store result score @e[tag=lock_red,scores={randomize_lock=10..}] randomize_lock run scoreboard players set @s randomize_lock 9
execute store result score @e[tag=lock_red,scores={randomize_lock=..0}] randomize_lock run scoreboard players set @s randomize_lock 1