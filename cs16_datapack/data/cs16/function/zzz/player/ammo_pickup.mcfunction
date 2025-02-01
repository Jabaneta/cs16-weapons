advancement revoke @s only cs16:ammo_pickup
execute if entity @s[tag=pistol] run function cs16:zzz/player/get/pistol_ammo
execute if entity @s[tag=smg] run function cs16:zzz/player/get/smg_ammo
execute if entity @s[tag=rifle] run function cs16:zzz/player/get/rifle_ammo

execute if entity @s[scores={cs16.player.reloading=1}] run return 0
execute unless score @s cs16.gun.uid matches 0 if score @s cs16.player.bullets matches 0 if score @s cs16.player.total_bullets matches 1.. if items entity @s weapon.mainhand music_disc_5[minecraft:custom_data~{gun:{isGun:true}}] run function cs16:zzz/player/reload/init_no_swap
