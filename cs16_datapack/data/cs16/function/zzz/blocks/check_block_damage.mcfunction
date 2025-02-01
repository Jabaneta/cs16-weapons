scoreboard players operation $temp0 temp = $block_pen cs16.gun.data
scoreboard players operation $temp0 temp -= $blocks_hit cs16.gun.data
execute if score $temp0 temp matches ..0 run return 0
scoreboard players operation @s cs16.entity.block_damage += $temp0 temp
#scoreboard players add @s cs16.entity.block_damage 1
scoreboard players set @s cs16.entity.kill_delay 0
execute if score @s cs16.entity.block_damage >= @s cs16.block_resistance at @s run function cs16:zzz/blocks/break
