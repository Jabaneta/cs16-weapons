scoreboard players set @s cs16.player.reloading_delay 0
scoreboard players set @s cs16.actionbar 0
scoreboard players set @s cs16.player.reloading 0
scoreboard players set playsound temp 0
execute if score @s cs16.player.bullets matches 1.. run item modify entity @s weapon.mainhand cs16:not_empty
