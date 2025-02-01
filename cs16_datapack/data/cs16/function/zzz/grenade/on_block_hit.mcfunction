scoreboard players set $block_pen cs16.gun.data 150
scoreboard players set $blocks_hit cs16.gun.data 0

execute align xyz as @n[type=marker,tag=block_destroyer,tag=block,distance=...1] run return run function cs16:zzz/blocks/check_block_damage
execute store result score $result temp if entity @e[type=marker,tag=block_destroyer]
execute if score $result temp matches ..1600 align xyz summon marker run function cs16:zzz/blocks/spawn_block_destroyer