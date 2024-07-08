tp ^ ^ ^1.5
execute unless block ~ ~1.5 ~ air run particle firework ^ ^ ^-1 0.2 0.2 0.2 0.1 100 force
execute unless block ~ ~1.5 ~ air run scoreboard players reset @s
execute unless block ~ ~1.5 ~ air run kill @s
scoreboard players add @s life 1
kill @s[scores={life=100..}]
particle firework ~ ~ ~ 0 0 0 0.0 10 force