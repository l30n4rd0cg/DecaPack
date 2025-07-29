# Args:
#   storage_name[string]
#   storage_path[nbt_path]
#   index[int]

data remove storage decapack:tmp_args return
$return run data modify storage decapack:tmp_args return set from storage $(storage_name) $(storage_path)[$(index)]