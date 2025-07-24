# Args:
#   storage_name[string]
#   storage_path[nbt_path]
#   index[int]

#tellraw @s "Executed misc/get_from_index with:"
#$tellraw @s "  storage_name = $(storage_name)"
#$tellraw @s "  storage_path = $(storage_path)"
#$tellraw @s "  index = $(index)"

data remove storage decapack:tmp_args return
$return run data modify storage decapack:tmp_args return set from storage $(storage_name) $(storage_path)[$(index)]