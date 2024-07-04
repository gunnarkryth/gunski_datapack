data merge entity @s {Rotation:[-180f,0f]}
execute at @s if block ~ ~-.1 ~ hopper run tp @s ~ ~0.8125 ~
execute at @s if block ~ ~-.1 ~ chest run tp @s ~ ~.625 ~
execute at @s run setblock ~ ~ ~ hopper
tag @s remove new_collector