tellraw @s {"text": "> Actualizando datos del STD 1 al STD 2...", "color": "green"}

scoreboard objectives remove in_shop
scoreboard objectives add decapack.in_shop dummy
scoreboard objectives remove shop_page
scoreboard objectives add decapack.shop_page dummy

data modify storage decapack:version current_std set value 2
execute store result score decapack tmp1 run data get storage decapack:version current_std

tellraw @s {"text": "Actualizado datos del STD 1 al STD 2!", "color": "green"}

function decapack:load