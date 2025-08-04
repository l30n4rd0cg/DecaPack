execute if score maxindex notty matches -1 run execute if entity @a[tag=notty] run schedule function decapack:music/play_random 3s
execute if score maxindex notty matches -1 run execute if entity @a[tag=notty] run scoreboard players set maxindex notty -2

# music.particles = off
execute if score music.particles decapack.settings matches 0 run scoreboard players set noteicon notty 100
# music.particles = spam
execute if score music.particles decapack.settings matches 2 run scoreboard players set noteicon notty 0