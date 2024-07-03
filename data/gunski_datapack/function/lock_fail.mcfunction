execute as @e[tag=lock] if score @s randomize_lock < @p lock_pick_number on attacker run playsound entity.item.break master @s ~ ~ ~ 3 1.5
execute as @e[tag=lock] if score @s randomize_lock > @p lock_pick_number on attacker run playsound entity.item.break master @s ~ ~ ~ 3 1.5

execute as @e[tag=lock] if score @s randomize_lock < @p lock_pick_number on attacker run scoreboard players add @n[type=interaction,tag=lock] lock_difficulty 1
execute as @e[tag=lock] if score @s randomize_lock > @p lock_pick_number on attacker run scoreboard players add @n[type=interaction,tag=lock] lock_difficulty 1
