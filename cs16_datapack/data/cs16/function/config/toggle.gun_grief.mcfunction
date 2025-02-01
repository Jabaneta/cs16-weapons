scoreboard players add $gunGrief cs16.global 1
execute if score $gunGrief cs16.global matches 2.. run scoreboard players set $gunGrief cs16.global 0

execute if score $gunGrief cs16.global matches 0 run tellraw @s [{"text":"Gun grief: "},{"text":"FALSE","color":"red","bold":true}]
execute if score $gunGrief cs16.global matches 1 run tellraw @s [{"text":"Gun grief: "},{"text":"TRUE","color":"green","bold":true}]