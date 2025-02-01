tellraw @s [{"text":"[Reset to Default Config]","color":"blue","clickEvent": {"action": "run_command","value": "/function cs16:config/default"}}]
execute if score $gunGrief cs16.global matches 0 run tellraw @s [{"text":"[Toggle Gun Grief]","color":"red","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.gun_grief"}}]
execute if score $gunGrief cs16.global matches 1 run tellraw @s [{"text":"[Toggle Gun Grief]","color":"green","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.gun_grief"}}]
execute if score $wallbang cs16.global matches 0 run tellraw @s [{"text":"[Toggle WallBang]","color":"red","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.thru_wall_damage"}}]
execute if score $wallbang cs16.global matches 1 run tellraw @s [{"text":"[Toggle WallBang]","color":"green","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.thru_wall_damage"}}]
execute if score $preventDeath cs16.global matches 0 run tellraw @s [{"text":"[Toggle Prevent Death From Gun Damage]","color":"red","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.prevent_death_from_gun_damage"}}]
execute if score $preventDeath cs16.global matches 1 run tellraw @s [{"text":"[Toggle Prevent Death From Gun Damage]","color":"green","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.prevent_death_from_gun_damage"}}]
execute if score $transform_item_to_display cs16.global matches 0 run tellraw @s [{"text":"[Toggle Transform Gun Items to Display Entities]","color":"red","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.transform_gun_items_to_item_display"}}]
execute if score $transform_item_to_display cs16.global matches 1 run tellraw @s [{"text":"[Toggle Transform Gun Items to Display Entities]","color":"green","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.transform_gun_items_to_item_display"}}]
tellraw @s [{"text":"[Grenade Rotation]","color":"green","clickEvent": {"action": "run_command","value": "/function cs16:config/toggle.grenade_rotation"}}]

tellraw @s [\
            {"text":"Gun Range: ","color":"white"},\
            {"text":"[64] ","color":"green","clickEvent": {"action": "run_command","value": "/function cs16:config/gun_range {range:256}"}},\
            {"text":"[128] ","color":"yellow","clickEvent": {"action": "run_command","value": "/function cs16:config/gun_range {range:512}"}},\
            {"text":"[256] ","color":"gold","clickEvent": {"action": "run_command","value": "/function cs16:config/gun_range {range:1024}"}}]