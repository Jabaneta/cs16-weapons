tag @s add changed_gun
title @s actionbar ""
scoreboard players set playsound temp 1
execute unless score @s cs16.player.reloading matches 0 unless items entity @s weapon.offhand minecraft:music_disc_5[minecraft:custom_data~{cs16_init:true}] run function cs16:zzz/player/reload/reset
execute if items entity @s weapon.offhand minecraft:music_disc_5[minecraft:custom_data~{cs16_init:true}] run function cs16:zzz/player/reload/init
execute if items entity @s weapon.offhand minecraft:spyglass[minecraft:custom_data~{cs16_init:true,gun:{id:30b}}] run return run function cs16:zzz/player/sniper_shot


execute unless data entity @s SelectedItem.components."minecraft:custom_data"{cs16_init:true} run function cs16:zzz/guns/get_default_data
execute if items entity @s weapon.mainhand music_disc_5[minecraft:custom_data~{cs16_init:true}] run function cs16:zzz/guns/get_data
execute if items entity @s weapon.mainhand spyglass[minecraft:custom_data~{cs16_init:true}] run function cs16:zzz/guns/get_data

execute if score playsound temp matches 1 run function cs16:zzz/guns/playsound
execute unless score @s cs16.gun.uid matches 0 if score @s cs16.player.bullets matches 0 if score @s cs16.player.total_bullets matches 1.. run function cs16:zzz/player/reload/init_no_swap