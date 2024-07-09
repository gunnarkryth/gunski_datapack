execute as @s[scores={gun_cooldown=..0}] run function gunski_datapack:gun_shoot
scoreboard players set @s gun_cooldown 10

scoreboard players reset @a interact_warped