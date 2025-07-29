# Args:
#   SelectedItemSlot[byte @ 0..8]
#   UUID[int array] -> 0, 1, 2, 3

$item replace entity @s hotbar.$(SelectedItemSlot) with player_head[profile={ id: [ I; $(0), $(1), $(2), $(3) ] }]

$data merge storage decapack:tmp_args2 {SelectedItemSlot: $(SelectedItemSlot)}

schedule function decapack:shop/sell_item_continue 2