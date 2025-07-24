clear @a barrier[repair_cost=999999]

execute if items block ~1 ~2 ~ container.* *[!repair_cost=999999] run function decapack:shop/spawn_shop_menu
execute if items block ~ ~2 ~ container.* *[!repair_cost=999999] run return run tellraw @s [{"text": "No se ha podido cerrar la tienda: tienes items por recojer.", color: "red"}]
execute if items block ~1 ~2 ~ container.* *[!repair_cost=999999] run return run tellraw @s [{"text": "No se ha podido cerrar la tienda: tienes items por recojer.", color: "red"}]

fill ~ ~2 ~ ~1 ~2 ~ air

scoreboard players reset @s in_shop

attribute @s jump_strength base reset