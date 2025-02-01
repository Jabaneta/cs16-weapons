scoreboard players add $wallbang cs16.global 1
execute if score $wallbang cs16.global matches 2.. run scoreboard players set $wallbang cs16.global 0

execute if score $wallbang cs16.global matches 0 run tellraw @s [{"text":"Wallbang: "},{"text":"FALSE","color":"red","bold":true}]
execute if score $wallbang cs16.global matches 1 run tellraw @s [{"text":"Wallbang: "},{"text":"TRUE","color":"green","bold":true}]