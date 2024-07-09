# Husher active
stopsound @a[distance=..16]
execute as @e[type=warden,distance=..16] run data merge entity @s {anger:{suspects:[{uuid:[I;0,0,0,0],anger:0}]}}
effect clear @e[distance=..16] darkness