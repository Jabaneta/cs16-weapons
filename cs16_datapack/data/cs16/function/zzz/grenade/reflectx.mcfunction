execute if entity @s[tag=unstable] run return run scoreboard players set @s cs16.grenade.explosion_delay 999
scoreboard players operation @s motion.x /= $3 const
execute store result entity @s Motion[0] double -0.0007 run scoreboard players get @s motion.x
execute if predicate cs16:05 store result entity @s Motion[0] double -0.0005 run scoreboard players get @s motion.x

scoreboard players operation @s motion.x *= $-1 const

scoreboard players operation $motion.x temp = @s motion.x
