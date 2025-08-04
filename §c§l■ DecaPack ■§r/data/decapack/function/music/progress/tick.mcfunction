bossbar set decapack:music_progress visible true
bossbar set decapack:music_progress players @a[tag=decacraft_music_progress, tag=notty]

data modify storage decapack:songs length set from storage notty sheet.notes[-1].when
execute store result storage decapack:songs tick int 1 run scoreboard players get tick notty

function decapack:music/progress/helper with storage decapack:songs