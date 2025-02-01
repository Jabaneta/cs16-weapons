execute if entity @s[gamemode=creative] run return 0
execute if score @s cs16.gun.enchantment.replenish matches 1 if predicate cs16:01 run return 0
execute if score @s cs16.gun.enchantment.replenish matches 2 if predicate cs16:02 run return 0
execute if score @s cs16.gun.enchantment.replenish matches 3 if predicate cs16:035 run return 0
execute store result score @s cs16.player.bullets run data get entity @s SelectedItem.components.minecraft:custom_data.gun.bullets
scoreboard players remove @s[scores={cs16.player.bullets=1..}] cs16.player.bullets 1
execute store result storage cs16:temp bullets int 1.0 run scoreboard players get @s cs16.player.bullets
execute if score @s cs16.player.bullets matches 0.. run item modify entity @s weapon.mainhand cs16:update_bullets
execute if score @s cs16.player.bullets matches 0 if score @s cs16.player.total_bullets matches 1.. run scoreboard players set @s cs16.player.reloading 1
execute if score @s cs16.player.bullets matches 0 run item modify entity @s weapon.mainhand cs16:empty
execute if score @s cs16.player.bullets matches 0 if score @s cs16.player.total_bullets matches 1.. run function cs16:zzz/player/reload/playsound