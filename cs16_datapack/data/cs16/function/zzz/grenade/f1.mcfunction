kill @e[type=snowball,sort=nearest,limit=1]

execute store result score $playerX temp run data get entity @s Pos[0] 100
execute store result score $playerY temp run data get entity @s Pos[1] 100
execute store result score $playerZ temp run data get entity @s Pos[2] 100

# execute store result score $yaw temp run data get entity @s Rotation[0] 100
# execute store result score $pitch temp run data get entity @s Rotation[1] 100

execute positioned ^ ^ ^.5 summon marker run function cs16:zzz/grenade/f2

scoreboard players operation $connection entity.id = @s player.id

execute anchored eyes positioned ^ ^ ^.5 run function cs16:zzz/grenade/spawn with storage cs16:temp motion

playsound entity.snowball.throw player @a