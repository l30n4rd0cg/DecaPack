# Inmobilize player
function decapack:shop/freeze_player
# Remove any dropped shop items
execute as @e[type=item] if data entity @s {Item: {components: {"minecraft:repair_cost": 999999}}} run kill @s
# Check if last slot contains something. If it doesn't, clear last slot.
execute unless items block ~ ~2 ~ container.26 *[!repair_cost=999999] run data remove block ~ ~2 ~ Items[{Slot: 26b}]
# If the player's holding a shop item, copy it to the last slot. Do this only if the last slot's empty.
execute if items entity @s player.cursor *[repair_cost=999999] unless items block ~ ~2 ~ container.26 * run item replace block ~ ~2 ~ container.26 from entity @s player.cursor
# If that item's a barrier, remove the chest.
execute if items entity @s player.cursor barrier[repair_cost=999999] run return run function decapack:shop/close_shop
# Remove shop items from player's inventory and cursor.
execute store result score decapack tmp1 run clear @a *[repair_cost=999999]
# If successful (removed 1+ items) and the chest is still there, respawn the shop.
execute if block ~ ~2 ~ chest if score decapack tmp1 matches 1.. run function decapack:shop/spawn_shop
# If selected item was/is an item with custom command data, execute it.
scoreboard players reset @s tmp1
data remove storage decapack:tmp_command command
execute store success score @s tmp1 run data modify storage decapack:tmp_command command set from block ~ ~2 ~ Items[{Slot: 26b, components: {"minecraft:custom_data": {"has_command": 1b}}}].components."minecraft:custom_data".command
execute if score @s tmp1 matches 1 run function decapack:misc/execute_command with storage decapack:tmp_command
# If selected item was/is a buyable item, buy it.
scoreboard players reset @s tmp1
data remove storage decapack:tmp_item item
execute store success score @s tmp1 run data modify storage decapack:tmp_item item set from block ~ ~2 ~ Items[{Slot: 26b, components: {"minecraft:custom_data": {"shop": 1b}}}]
execute if score @s tmp1 matches 1 run data modify storage decapack:tmp_args slot set from storage decapack:tmp_item item.components."minecraft:custom_data".shop_slot
execute if score @s tmp1 matches 1 run data modify storage decapack:tmp_args shop_index set from storage decapack:tmp_item item.components."minecraft:custom_data".shop_index
execute if score @s tmp1 matches 1 run function decapack:shop/buy_item with storage decapack:tmp_args