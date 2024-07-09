# Loading...
tellraw @a "Datapack: loading..."

# Statistics
scoreboard objectives add kills totalKillCount "Kills"
scoreboard players reset @a kills
scoreboard objectives add health health "Health"
scoreboard objectives setdisplay below_name health
scoreboard objectives modify health rendertype hearts

# Level
scoreboard objectives add level dummy "Level"
scoreboard objectives add xp dummy "Experience points"
scoreboard objectives setdisplay list level
scoreboard players set $1000 xp 1000

# Barbarian
scoreboard objectives add rage_timer dummy "Rage timer"
scoreboard objectives add rage dummy "Rage"

# Select race
scoreboard objectives add select_race dummy "Select race"


# Randomize locks
function gunski_datapack:randomize_lock

# Lock difficulty
scoreboard objectives add lock_difficulty dummy "Lock difficulty"


# Coin flip
scoreboard objectives add coin_flip dummy "Coin flip result"


# Give custom items
# function gunski_datapack:give

# Husher
scoreboard objectives add activated dummy "Activated"

# Gun
scoreboard objectives add interact_warped minecraft.used:minecraft.warped_fungus_on_a_stick "Used warped fungus on a stick"
scoreboard objectives add timer dummy "Timer"
scoreboard objectives add gun_cooldown dummy "Gun cooldown"
scoreboard objectives add gun_bullet_life dummy "Bullet life"

tellraw @a "Datapack: done!"