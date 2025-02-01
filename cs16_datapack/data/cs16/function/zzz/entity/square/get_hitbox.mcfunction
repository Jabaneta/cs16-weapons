tp 8-0-0-0-E7 ~ ~ ~

scoreboard players set $bodyPart temp 1

execute if score $range_modifier cs16.gun.data matches ..99 run function cs16:zzz/bullet/calc_dmg
scoreboard players operation $damage temp += $fire_power cs16.gun.data
execute if entity @s[type=shulker,nbt={Peek:0b}] run scoreboard players operation $damage temp /= $4 const

scoreboard players operation $total_damage_dealt temp += $damage temp

particle minecraft:item{item:{id:"red_concrete"}} ~ ~ ~ 0.1 0.1 0.1 0.05 2


execute if score $has_crit cs16.gun.data matches 1 run particle minecraft:item{item:{id:"redstone_block"}} ~ ~ ~ 0.2 0.2 0.2 0.11 10

execute if score $result temp matches ..-1 run particle happy_villager ~ ~ ~ 0.2 0.3 0.2 1 1

function cs16:zzz/entity/on_hit
