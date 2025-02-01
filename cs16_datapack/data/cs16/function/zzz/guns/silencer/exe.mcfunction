scoreboard players set $silencer temp 1
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{gun:{silencer:0b}}}}}] run return run data merge entity @s {PickupDelay:0,Item:{components:{"minecraft:custom_data":{gun:{silencer:true}},item_model:"cs16:gun/m4a1_silencer"}}}
scoreboard players set $silencer temp 0
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{gun:{silencer:1b}}}}}] run data merge entity @s {PickupDelay:0,Item:{components:{"minecraft:custom_data":{gun:{silencer:false}},item_model:"cs16:gun/m4a1"}}}
