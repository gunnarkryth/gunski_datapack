summon marker ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["bullet"]}
data modify entity @n[tag=bullet] Rotation set from entity @s Rotation
scoreboard players reset @a interact_warped