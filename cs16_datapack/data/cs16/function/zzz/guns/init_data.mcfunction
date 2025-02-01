

scoreboard players operation $dmgHead cs16.gun.data = @s cs16.gun.damage.head
scoreboard players operation $dmgChest cs16.gun.data = @s cs16.gun.damage.chest
scoreboard players operation $dmgLegs cs16.gun.data = @s cs16.gun.damage.legs

scoreboard players set $has_crit cs16.gun.data 0
execute if score @s cs16.gun.enchantment.crit_chance matches 1.. run function cs16:zzz/guns/try_crit

scoreboard players operation $range_modifier cs16.gun.data = @s cs16.gun.range_modifier
scoreboard players operation $block_pen cs16.gun.data = @s cs16.gun.block_pen

scoreboard players operation $fire_power cs16.gun.data = @s cs16.gun.enchantment.fire_power

scoreboard players operation @s cs16.player.recoil_delay = @s cs16.gun.recoil_delay
scoreboard players set $blocks_hit cs16.gun.data 0
execute if score $wallbang cs16.global matches 0 run scoreboard players set $blocks_hit cs16.gun.data 99999
scoreboard players set $hit_block cs16.gun.data 0

execute if score @s cs16.gun.id matches 0..19 run scoreboard players set @s cs16.player.gun_use_delay 3

execute if entity @s[nbt={OnGround:0b}] run function cs16:zzz/player/recoil/main


execute store result storage cs16:temp recoil.XZ float 0.007 run scoreboard players get @s cs16.player.recoilXZ
execute store result storage cs16:temp recoil.Y float -0.0021 run scoreboard players get @s cs16.player.recoilY

scoreboard players set $total_damage_dealt temp 0
scoreboard players operation $range cs16.gun.data = $gunRange cs16.global
function cs16:zzz/bullet/init_visual with storage cs16:temp recoil
function cs16:zzz/guns/init_fire_gun with storage cs16:temp recoil

scoreboard players operation $total_damage_dealt temp /= $1000 const
scoreboard players operation @s cs16.player.damage_dealt = $total_damage_dealt temp
function cs16:zzz/player/recoil/main
function cs16:zzz/guns/sound
function cs16:zzz/guns/update_gun
execute unless predicate cs16:daytime run function cs16:zzz/guns/light_effect