execute if entity @s[scores={cs16.gun.silencer=1}] run return run function cs16:zzz/guns/m4/playsound_silencer
playsound cs16:m4a1_unsil voice @a
execute at @s facing entity @s eyes as @a[distance=16..32] at @s positioned ^ ^ ^5 run playsound cs16:m4a1_unsil voice @s ~ ~ ~ 0.2 1
execute at @s facing entity @s eyes as @a[distance=32.01..64] at @s positioned ^ ^ ^5 run playsound cs16:m4a1_unsil voice @s ~ ~ ~ 0.05 1