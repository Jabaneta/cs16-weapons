data merge entity @s {item:{id:"minecraft:black_stained_glass"},transformation:{scale:[0.05f,0.05f,0.05f],translation:[0f,-0.0f,0f]}}
tag @s add bullet_dmg

particle ash ~ ~ ~ 0.1 0.1 0.1 0.03 5

function cs16:zzz/bullet/get_block_face


execute if score $face temp matches 0 if score $direction_x temp matches 1 align x run return run tp @s ~.015 ~ ~
execute if score $face temp matches 1 if score $direction_y temp matches 1 align y run return run tp @s ~ ~.015 ~
execute if score $face temp matches 2 if score $direction_z temp matches 1 align z run return run tp @s ~ ~ ~.015


execute if score $face temp matches 0 if score $direction_x temp matches -1 align x run return run tp @s ~0.985 ~ ~
execute if score $face temp matches 1 if score $direction_y temp matches -1 align y run return run tp @s ~ ~0.985 ~
execute if score $face temp matches 2 if score $direction_z temp matches -1 align z run return run tp @s ~ ~ ~0.985
