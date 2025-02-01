scoreboard players add $transform_item_to_display cs16.global 1
execute if score $transform_item_to_display cs16.global matches 2.. run scoreboard players set $transform_item_to_display cs16.global 0

execute if score $transform_item_to_display cs16.global matches 0 run tellraw @s [{"text":"Transform gun items to display entities: "},{"text":"FALSE","color":"red","bold":true}]
execute if score $transform_item_to_display cs16.global matches 1 run tellraw @s [{"text":"Transform gun items to display entities: "},{"text":"TRUE","color":"green","bold":true}]