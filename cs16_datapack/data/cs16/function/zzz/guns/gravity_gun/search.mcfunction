tag @s add find_me
execute as @p[tag=this] if predicate cs16:find_me as @e[type=husk,tag=find_me,limit=1,distance=..5] run return run function cs16:zzz/guns/gravity_gun/success
tag @s remove find_me