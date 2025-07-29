# Args:
#   id[string]: item id
#   count[int @ 1..99]: item count
#   price[int @ 1..]: item 
#   vendor[string]: player name of who sells the item.
#   components[string]: [NEW] storage name of custom components of the item

data remove storage decapack:tmp_shop_item item
$data merge storage decapack:tmp_shop_item {item: {id: "$(id)", count: $(count), price: $(price), strprice: "$(price)", vendor: "$(vendor)"}}
$data modify storage decapack:tmp_shop_item item.components set from storage $(components)
data modify storage decapack:shop items append from storage decapack:tmp_shop_item item