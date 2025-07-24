# # Args:
# #   item<item>

# Args:
#   slot[0<=byte<27b]
#   shop_index[int]

$execute store result score @s tmp1 run data get storage decapack:shop items[$(shop_index)].price
#execute store result score @s tmp2 run scoreboard players get @s money
execute if score @s tmp1 > @s money run return run tellraw @s [{"text": "¡No tienes suficiente dinero! El objeto cuesta ", color: "red"}, {score: {name: "@s", objective: "tmp1"}, color: "gold"}, {text: "Ð", color: "gold"}, {text: " y tú tienes ", color: "red"}, {score: {name: "@s", objective: "money"}, color: "gold"}, {text: "Ð", color: "gold"}, {text: ".", color: "red"}]
execute if items block ~ ~2 ~ container.13 * run return run tellraw @s [{"text": "No se ha podido comprar el item: slot ocupado.", color: "red"}]
scoreboard players operation @s money -= @s tmp1
#º$tellraw @s "function decapack:shop/buy_item_helper with storage decapack:shop items[$(shop_index)]"
#$tellraw @s {"storage": "decapack:shop", nbt: "items[$(shop_index)]", color: green}
$function decapack:shop/buy_item_helper with storage decapack:shop items[$(shop_index)]
$data remove block ~1 ~2 ~ Items[{Slot: $(slot)b}].components."minecraft:lore"
$data remove block ~1 ~2 ~ Items[{Slot: $(slot)b}].components."minecraft:repair_cost"
$data remove block ~1 ~2 ~ Items[{Slot: $(slot)b}].components."minecraft:custom_data"
$item replace block ~ ~2 ~ container.13 from block ~1 ~2 ~ container.$(slot)
$data remove storage decapack:shop items[$(shop_index)]
$data remove block ~1 ~2 ~ Items[{Slot: $(slot)b}]
function decapack:shop/spawn_shop
#tellraw @s [{"text": "¡Has comprado el objeto!", color: "gold"}]
tellraw @s [{"text": "¡Has comprado el objeto por ", color: "green"}, {score: {name: "@s", objective: "tmp1"}, color: "gold"}, {text: "Ð", color: gold}, {text: "!", color: "green"}]
playsound block.note_block.pling ui @s ~ ~ ~ 1 1 1