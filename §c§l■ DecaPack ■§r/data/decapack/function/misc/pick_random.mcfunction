# Args:
#   - storage[nbt storage]
#   - path[nbt path]

$execute store result score decapack tmp1 run data get storage $(storage) $(path)
execute store result score decapack tmp2 run random value 1..2147483647
scoreboard players operation decapack tmp2 %= decapack tmp1
execute store result storage decapack:tmp_args index int 1 run scoreboard players get decapack tmp2
$data merge storage decapack:tmp_args {storage: "$(storage)", path: "$(path)"}
function decapack:misc/index_array with storage decapack:tmp_args