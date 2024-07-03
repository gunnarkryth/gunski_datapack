execute store result score @s coin_flip run random value 1..2
execute as @s[scores={coin_flip=1}] run tellraw @a[distance=..10] "Heads"
execute as @s[scores={coin_flip=2}] run tellraw @a[distance=..10] "Tails"
tag @s add activated