tp 8-0-0-0-E7 ~ ~ ~
execute store result score $result temp run data get entity 8-0-0-0-E7 Pos[1] 100000
execute store result score $mobY temp run data get entity @s Pos[1] 100000
scoreboard players operation $result temp -= $mobY temp

scoreboard players set $leg_height temp 67
scoreboard players set $head_height temp 155
execute store result score $scale temp run attribute @s scale get 1000

scoreboard players operation $leg_height temp *= $scale temp
scoreboard players operation $head_height temp *= $scale temp


execute if score $result temp <= $leg_height temp run scoreboard players set $bodyPart temp 0
execute if score $result temp > $leg_height temp if score $result temp < $head_height temp run scoreboard players set $bodyPart temp 1
execute if score $result temp >= $head_height temp run scoreboard players set $bodyPart temp 2
execute if score $scale temp matches ..10 run scoreboard players set $bodyPart temp 2
execute if score $range_modifier cs16.gun.data matches ..99 run function cs16:zzz/bullet/calc_dmg
scoreboard players operation $damage temp += $fire_power cs16.gun.data
scoreboard players operation $total_damage_dealt temp += $damage temp

execute if score $result temp matches 1.. if score $bodyPart temp matches 2 run particle minecraft:item{item:{id:"red_concrete"}} ~ ~ ~ 0.1 0.1 0.1 0.05 8
execute if score $result temp matches 1.. if score $bodyPart temp matches 1 run particle minecraft:item{item:{id:"red_concrete"}} ~ ~ ~ 0.1 0.1 0.1 0.05 2
execute if score $result temp matches 1.. if score $bodyPart temp matches 0 run particle minecraft:item{item:{id:"red_concrete"}} ~ ~ ~ 0.1 0.1 0.1 0.05 2

execute if score $has_crit cs16.gun.data matches 1 run particle minecraft:item{item:{id:"redstone_block"}} ~ ~ ~ 0.2 0.2 0.2 0.15 25

execute if score $result temp matches ..-1 run particle happy_villager ~ ~ ~ 0.2 0.3 0.2 1 1
execute if score $bodyPart temp matches 2 run scoreboard players add @a[tag=this] stats.player.totalHeadShotsHit 1

function cs16:zzz/entity/on_hit
