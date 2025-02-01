scoreboard players add @s cs16.entity.kill_delay 1
execute if score @s cs16.entity.kill_delay matches ..60 run return 0

kill @s
scoreboard players reset @s cs16.entity.block_damage
scoreboard players reset @s cs16.entity.kill_delay
