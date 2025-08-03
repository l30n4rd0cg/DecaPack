# Args:
#   - storage[nbt storage]
#   - path[nbt path]
#   - index[int>0]

data remove storage decapack:tmp_args result
$data modify storage decapack:tmp_args result set from storage $(storage) $(path)[$(index)]