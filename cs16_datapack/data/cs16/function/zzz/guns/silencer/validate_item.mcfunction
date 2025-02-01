execute store result score $id temp run data get entity @n[type=item,nbt={Age:0s}] Item.components."minecraft:custom_data".gun.id
execute if score $id temp matches 21 as @n[type=item,nbt={Age:0s}] run function cs16:zzz/guns/silencer/exe
scoreboard players operation @s cs16.gun.silencer = $silencer temp
scoreboard players reset @s cs16.player.dropped_item