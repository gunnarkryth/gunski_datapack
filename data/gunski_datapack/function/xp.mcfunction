execute store result score $extra_xp xp store result score @s level run scoreboard players get @s xp

scoreboard players operation @s level /= $1000 xp

scoreboard players operation $extra_xp xp %= $1000 xp

title @s actionbar [{"text":"⋆ ","color": "#9ad26c"},{"score":{"name":"$extra_xp","objective":"xp"}},{"text":" ⋆"}]