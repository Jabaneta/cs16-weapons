execute unless entity @s[tag=right_clicking] run function cs16:zzz/player/right_click_stop
execute if entity @s[tag=right_clicking] run advancement revoke @s only cs16:check_if_right_clicking
tag @s remove right_clicking