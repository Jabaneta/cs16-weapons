scoreboard players operation $connection entity.id = @s entity.id

execute at @s unless entity @e[type=fireball,tag=missile,predicate=cs16:entity_entity] run function cs16:zzz/guns/missile_launcher/explode
