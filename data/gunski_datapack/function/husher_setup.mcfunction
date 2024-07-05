execute at @s[tag=new_husher] run setblock ~ ~ ~ cobbled_deepslate_wall replace

data merge entity @s {Rotation:[-180f,0f]}

# execute at @s run setblock ~ ~ ~ decorated_pot

execute at @s[tag=new_husher] run tp @s ~ ~0.5 ~

tag @s remove new_husher









