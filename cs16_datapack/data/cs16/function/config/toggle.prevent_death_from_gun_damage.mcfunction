scoreboard players add $preventDeath cs16.global 1
execute if score $preventDeath cs16.global matches 2.. run scoreboard players set $preventDeath cs16.global 0

execute if score $preventDeath cs16.global matches 0 run tellraw @s [{"text":"Prevent death from gun damage: "},{"text":"FALSE","color":"red","bold":true}]
execute if score $preventDeath cs16.global matches 1 run tellraw @s [{"text":"Prevent death from gun damage: "},{"text":"TRUE","color":"green","bold":true}]