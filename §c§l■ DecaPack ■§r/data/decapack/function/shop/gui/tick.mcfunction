#execute as @a run function decapack:shop/tick_player_wrapper
execute as @a at @s if score @s decapack.in_shop matches 1 run function decapack:shop/gui/tick_player