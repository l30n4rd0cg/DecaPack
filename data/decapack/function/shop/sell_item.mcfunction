# Args:
#   price[int>0]

$data merge storage decapack:tmp_args2 {price: $(price)}
data modify storage decapack:tmp_args2 id set from entity @s SelectedItem.id
data modify storage decapack:tmp_args2 count set from entity @s SelectedItem.count
data modify storage decapack:tmp_args2 custom_components set value {}
data modify storage decapack:tmp_args2 custom_components set from entity @s SelectedItem.components
data modify storage decapack:tmp_args2 components set value "decapack:tmp_args2 custom_components"

data modify storage decapack:tmp_args2 0 set from entity @s UUID[0]
data modify storage decapack:tmp_args2 1 set from entity @s UUID[1]
data modify storage decapack:tmp_args2 2 set from entity @s UUID[2]
data modify storage decapack:tmp_args2 3 set from entity @s UUID[3]

data modify storage decapack:tmp_args2 SelectedItemSlot set from entity @s SelectedItemSlot

function decapack:shop/sell_item_helper with storage decapack:tmp_args2