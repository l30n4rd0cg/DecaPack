# Args:
#   StartSlot[26<=byte<=0]
#   Index[int>=0]

# decapack:shop
#  |- items[list]
#      |- [compound]
#          |- id[string]: item id
#          |- count[int @ 1..99]: item count
#          |- price[int @ 1..]: item price
#          |- strprice[string]: string representation of item price
#          |- vendor[string]: player name of who sells the item. (previously named 'seller')
#          |- components[compound]: [NEW] custom components of the item


data remove storage decapack:tmp_shop_item item
$execute store success score decapack tmp1 run data modify storage decapack:tmp_shop_item item set from storage decapack:shop items[$(Index)]
execute if score decapack tmp1 matches 0 run return 0
data modify storage decapack:tmp_item id set from storage decapack:tmp_shop_item item.id
data modify storage decapack:tmp_item count set from storage decapack:tmp_shop_item item.count
$data modify storage decapack:tmp_item Slot set value $(StartSlot)
data modify storage decapack:tmp_item components set from storage decapack:tmp_shop_item item.components
$data modify storage decapack:tmp_item components.custom_data.shop_slot set value $(StartSlot)
$data modify storage decapack:tmp_item components.custom_data.shop_index set value $(Index)
data modify storage decapack:tmp_item components.custom_data.shop set value 1b
data modify storage decapack:tmp_item components.repair_cost set value 999999
data modify storage decapack:tmp_item components.lore set value [[{text: "Precio: ", bold: false, italic: false, color: "green"}, {text: "text.price", bold: false, italic: false, color: "gold"}, {text: "Ð", bold: false, italic: false, color: "gold"}], [{text: "De ", bold: false, italic: false, color: "dark_gray"}, {text: "text.vendor", bold: false, italic: false, color: "dark_gray"}], ""]
data modify storage decapack:tmp_item components.lore[0][1].text set from storage decapack:tmp_shop_item item.strprice
data modify storage decapack:tmp_item components.lore[1][1].text set from storage decapack:tmp_shop_item item.vendor
data modify block ~1 ~2 ~ Items append from storage decapack:tmp_item

execute store result score decapack tmp1 run data get storage decapack:shop items
scoreboard players remove decapack tmp1 1
$execute if score decapack tmp1 matches $(Index) run return 0

$scoreboard players set decapack tmp1 $(Index)
scoreboard players add decapack tmp1 1
execute store result storage decapack:tmp_args Index int 1.0 run scoreboard players get decapack tmp1

$scoreboard players set decapack tmp1 $(StartSlot)
scoreboard players add decapack tmp1 1
execute store result storage decapack:tmp_args StartSlot byte 1.0 run scoreboard players get decapack tmp1

execute if score decapack tmp1 matches 27 run return 1

function decapack:shop/gui/fill_items with storage decapack:tmp_args