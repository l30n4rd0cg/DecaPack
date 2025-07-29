effect give @s slowness 1 255 true
effect give @a[distance=..5] mining_fatigue 1 255 true
execute as @s align xyz run tp @s ~.5 ~ ~.5 facing ~.5 ~1 ~.5
#attribute @s movement_speed base set 0
attribute @s jump_strength base set 0