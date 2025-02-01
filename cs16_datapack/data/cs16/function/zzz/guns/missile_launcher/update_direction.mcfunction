execute store result score $missileX temp run data get entity @s Pos[0] 1000
execute store result score $missileY temp run data get entity @s Pos[1] 1000
execute store result score $missileZ temp run data get entity @s Pos[2] 1000

scoreboard players operation $in1 temp = $missileX temp
scoreboard players operation $in2 temp = $guideX temp
function cs16:zzz/atan

execute store result entity @s Rotation[0] float .05729 run scoreboard players get $result temp

scoreboard players operation $in1 temp = $missileZ temp
scoreboard players operation $in2 temp = $guideZ temp
function cs16:zzz/atan
execute store result entity @s Rotation[0] float .05729 run scoreboard players get $result temp
