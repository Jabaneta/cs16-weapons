execute if entity @s[type=player] store result score $result temp run scoreboard players get @s cs16.gun.id

execute if score $result temp matches 3 run return run function cs16:zzz/guns/deagle/playsound
execute if score $result temp matches 1 run return run function cs16:zzz/guns/usp/playsound
execute if score $result temp matches 2 run return run function cs16:zzz/guns/glock/playsound
execute if score $result temp matches 20 run return run function cs16:zzz/guns/ak47/playsound
execute if score $result temp matches 21 run return run function cs16:zzz/guns/m4/playsound
execute if score $result temp matches 23 run return run function cs16:zzz/guns/mp5/playsound
execute if score $result temp matches 24 run return run function cs16:zzz/guns/m249/playsound
execute if score $result temp matches 26 run return run function cs16:zzz/guns/p90/playsound
execute if score $result temp matches 30 run return run function cs16:zzz/guns/awp/playsound

function cs16:zzz/guns/playsound_generic