$scoreboard players set $gunRange cs16.global $(range)
$scoreboard players set $temp0 temp $(range)
scoreboard players operation $temp0 temp /= $4 const
tellraw @a[] [{"text":"Gun range is now "},{"score":{"name": "$temp0","objective": "temp"}},{"text": " blocks"}]