execute store result score $playerX temp run data get entity @s Pos[0] 100
execute store result score $playerY temp run data get entity @s Pos[1] 100
execute store result score $playerZ temp run data get entity @s Pos[2] 100

scoreboard players operation $temp0 temp = posX temp
scoreboard players operation $temp1 temp = posY temp
scoreboard players operation $temp2 temp = posZ temp

execute store result storage distance:data in.x float 0.01 run scoreboard players operation $temp0 temp -= $playerX temp
execute store result storage distance:data in.y float 0.01 run scoreboard players operation $temp1 temp -= $playerY temp
execute store result storage distance:data in.z float 0.01 run scoreboard players operation $temp2 temp -= $playerZ temp

function distance:main
execute store result score $damage temp run data get storage distance:data out 1000
scoreboard players operation $damage temp /= $8 const
scoreboard players remove $damage temp 1500
scoreboard players operation $damage temp *= $damage temp
scoreboard players operation $damage temp /= $100 const
execute if entity @s[type=shulker,nbt={Peek:0b}] run scoreboard players set $damage temp 0

scoreboard players operation $total_damage_dealt temp += $damage temp

scoreboard players set range temp 48
#scoreboard players set walled temp 1
#function cs16:zzz/grenade/wall_check
#execute if score walled temp matches 1 run scoreboard players operation $damage temp /= $2 const
execute if score $damage temp matches ..-1 run scoreboard players set $damage temp 0
scoreboard players set bomb_kill temp 1
execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator] run function cs16:zzz/player/on/grenade_hit
execute if entity @s[type=!player] run function cs16:zzz/entity/on_hit
scoreboard players set bomb_kill temp 0