execute summon item_display run function cs16:zzz/bullet/spawn_bullet_hole
scoreboard players add $blocks_hit cs16.gun.data 2
scoreboard players operation $dmgHead cs16.gun.data /= $2 const
scoreboard players operation $dmgChest cs16.gun.data /= $2 const
scoreboard players operation $dmgLegs cs16.gun.data /= $2 const
execute if score $dmgHead cs16.gun.data matches 0 run scoreboard players set $range cs16.gun.data 0
function cs16:zzz/blocks/get_particle
execute if score $gunGrief cs16.global matches 0 run return 0
execute align xyz as @n[type=marker,tag=block_destroyer,tag=block,distance=...1] run return run function cs16:zzz/blocks/check_block_damage
execute store result score $result temp if entity @e[type=marker,tag=block_destroyer]
execute if score $result temp matches ..1600 align xyz summon marker run function cs16:zzz/blocks/spawn_block_destroyer
