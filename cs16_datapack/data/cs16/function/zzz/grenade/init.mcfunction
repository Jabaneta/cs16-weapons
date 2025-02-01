scoreboard players operation @s entity.id = $connection entity.id
tag @s remove new

execute store result score @s motion.x run data get entity @s Motion[0] 1000
execute store result score @s motion.y run data get entity @s Motion[1] 1000
execute store result score @s motion.z run data get entity @s Motion[2] 1000
execute unless score $thrown_by_npc temp matches 1 run return 0
tag @s add thrown_by_npc
execute unless predicate cs16:02 run return 0
tag @s add unstable
execute on passengers run data merge entity @s {Glowing:1b,glow_color_override:10354688}

