execute unless block ~ ~2 ~ air unless block ~ ~2 ~ chest run return fail
execute unless block ~1 ~2 ~ air unless block ~1 ~2 ~ chest run return fail

setblock ~ ~2 ~ chest[type=left]{CustomName: Tienda} keep
setblock ~1 ~2 ~ chest[type=right] keep

data merge storage decapack:tmp_args {StartSlot: 0b, Index: 0}
execute store result storage decapack:tmp_args Index int 27 run scoreboard players get @s shop_page

data remove block ~1 ~2 ~ Items

function decapack:shop/fill_items with storage decapack:tmp_args

function decapack:shop/spawn_shop_menu

scoreboard players set @s in_shop 1