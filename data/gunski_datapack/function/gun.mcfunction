scoreboard players set .ticks timer 10

summon marker ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["bullet"]}
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.3 2

data modify entity @n[tag=bullet] Rotation set from entity @s Rotation
item modify entity @s weapon.mainhand {function:"set_components",components:{custom_model_data:901}}

scoreboard players reset @a interact_warped