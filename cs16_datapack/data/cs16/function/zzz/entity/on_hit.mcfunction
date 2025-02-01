execute store result storage cs16:temp damage.value float 0.001 run scoreboard players get $damage temp
execute if entity @s[tag=!dummy] run function cs16:zzz/entity/apply_gun_damage with storage cs16:temp damage
execute if entity @s[tag=dummy] run function cs16:zzz/entity/dummy_damage with storage cs16:temp damage
