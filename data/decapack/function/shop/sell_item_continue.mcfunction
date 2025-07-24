#say Continue!

data remove storage decapack:tmp_args2 vendor
#execute store success score @s tmp1 run data modify storage decapack:tmp_args2 vendor set from entity @s SelectedItem.components."minecraft:profile".name
function decapack:shop/sell_item_continue_helper with storage decapack:tmp_args2

#tellraw @a {storage: "decapack:tmp_args2", nbt: "", color: "green"}

function decapack:shop/add_item with storage decapack:tmp_args2