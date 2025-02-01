execute store result score $id cs16.gun.data run data get entity @s SelectedItem.components."minecraft:custom_data".gun.id

execute if score $id cs16.gun.data matches 1 run item modify entity @s weapon.mainhand cs16:default_gun/pistol/deagle
execute if score $id cs16.gun.data matches 2 run item modify entity @s weapon.mainhand cs16:default_gun/pistol/deagle
execute if score $id cs16.gun.data matches 3 run item modify entity @s weapon.mainhand cs16:default_gun/pistol/deagle


execute if score $id cs16.gun.data matches 20 run item modify entity @s weapon.mainhand cs16:default_gun/rifle/ak47
execute if score $id cs16.gun.data matches 21 run item modify entity @s weapon.mainhand cs16:default_gun/rifle/m4a1
execute if score $id cs16.gun.data matches 23 run item modify entity @s weapon.mainhand cs16:default_gun/smg/mp5
execute if score $id cs16.gun.data matches 24 run item modify entity @s weapon.mainhand cs16:default_gun/rifle/m249
execute if score $id cs16.gun.data matches 25 run item modify entity @s weapon.mainhand cs16:default_gun/smg/ump
execute if score $id cs16.gun.data matches 26 run item modify entity @s weapon.mainhand cs16:default_gun/smg/p90
execute if score $id cs16.gun.data matches 27 run item modify entity @s weapon.mainhand cs16:default_gun/rifle/famas

execute if score $id cs16.gun.data matches 30 run item modify entity @s weapon.mainhand cs16:default_gun/rifle/awp