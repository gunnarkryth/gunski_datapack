tp ^ ^-0.01 ^1.5

particle ash ~ ~ ~ 0 0 0 0.1 1 force

execute unless block ~ ~1.5 ~ air run function gunski_datapack:bullet_hit_ground

scoreboard players add @s gun_bullet_life 1

execute as @s[scores={gun_bullet_life=3..}] positioned ~ ~-1 ~ if entity @e[tag=!bullet,distance=..2,type=!item,type=!item_display,type=!glow_item_frame,type=!interaction,type=!marker,type=!block_display,type=!painting] run function gunski_datapack:bullet_hit_entity

kill @s[scores={gun_bullet_life=50..}]