execute store result score decapack tmp1 run data get storage decapack:version current_std

execute if score decapack tmp1 matches 1 run function decapack:upgrade/2