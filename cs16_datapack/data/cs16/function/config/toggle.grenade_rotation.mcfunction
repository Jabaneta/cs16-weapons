scoreboard players add $grenadeRotation cs16.global 1
execute if score $grenadeRotation cs16.global matches 2.. run scoreboard players set $grenadeRotation cs16.global 0

execute if score $grenadeRotation cs16.global matches 0 run tellraw @s [{"text":"Grenade Rotation: "},{"text":"EFFICIENT","color":"green","bold":true}]
execute if score $grenadeRotation cs16.global matches 1 run tellraw @s [{"text":"Grenade Rotation: "},{"text":"KIND OFF REALISTIC","color":"gold","bold":true}]