execute if entity @s[type=player,gamemode=creative] run return 0
execute if entity @s[type=player,gamemode=spectator] run return 0
execute if entity @s[type=shulker_bullet] run return run kill @s

tag @s add bullet_check
scoreboard players set @a[tag=this,limit=1] cs16.show_dmg_timer 20

execute if entity @s[type=player] run function cs16:zzz/player/on/hit
execute if entity @s[type=!player] run function cs16:zzz/entity/get_type
scoreboard players operation $dmgHead cs16.gun.data /= $2 const
scoreboard players operation $dmgChest cs16.gun.data /= $2 const
scoreboard players operation $dmgLegs cs16.gun.data /= $2 const