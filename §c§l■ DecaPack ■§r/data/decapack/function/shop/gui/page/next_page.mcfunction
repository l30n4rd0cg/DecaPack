scoreboard players add @s decapack.shop_page 1
execute store result storage decapack:tmp_args index int 27 run scoreboard players get @s decapack.shop_page
data merge storage decapack:tmp_args {storage_name: "decapack:shop", storage_path: "items"}

execute store success score decapack tmp1 run function decapack:misc/get_from_index with storage decapack:tmp_args
execute if score decapack tmp1 matches 0 run return run scoreboard players remove @s decapack.shop_page 1

function decapack:shop/gui/spawn_shop/spawn_shop