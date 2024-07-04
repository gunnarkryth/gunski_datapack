# Game master
execute at @a[tag=game_master] run data merge entity @n[type=interaction,distance=..2,tag=lock] {width:0f,height:0f}
execute at @a[tag=game_master] run data merge entity @n[type=interaction,distance=2..3,tag=lock] {width:1.1f,height:1.1f}

# Remove stray locks
execute as @e[type=interaction,tag=lock] at @s if block ~ ~.1 ~ air run kill @e[tag=lock,sort=nearest,limit=2,distance=..1.5]
execute as @e[tag=lock] at @s unless entity @n[type=item_display,tag=lock,distance=..1.5] run kill @s