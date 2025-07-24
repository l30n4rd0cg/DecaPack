# Args: UUID: 0, 1, 2, 3

#               Decacraft
#                                       1   6
# Nombre: LeonardoClGo                  2   5
#                                       3   4
# Dinero: 120Ð                          4   3
#                                       5   2
# minecraft.garabanamas.es              6   1


$scoreboard objectives add decacraft_uuid_$(0)_$(1)_$(2)_$(3) dummy {text: "Decacraft", color: "green", bold: true}
$execute as @s run scoreboard objectives setdisplay sidebar decacraft_uuid_$(0)_$(1)_$(2)_$(3)
$scoreboard objectives modify decacraft_uuid_$(0)_$(1)_$(2)_$(3) numberformat blank

$scoreboard players set @e[tag=decacraft_scoreboard_1] decacraft_uuid_$(0)_$(1)_$(2)_$(3) 6
$scoreboard players set @e[tag=decacraft_scoreboard_2] decacraft_uuid_$(0)_$(1)_$(2)_$(3) 5
$scoreboard players set @e[tag=decacraft_scoreboard_3] decacraft_uuid_$(0)_$(1)_$(2)_$(3) 4
$scoreboard players set @e[tag=decacraft_scoreboard_4] decacraft_uuid_$(0)_$(1)_$(2)_$(3) 3
$scoreboard players set @e[tag=decacraft_scoreboard_5] decacraft_uuid_$(0)_$(1)_$(2)_$(3) 2
$scoreboard players set @e[tag=decacraft_scoreboard_6] decacraft_uuid_$(0)_$(1)_$(2)_$(3) 1

$scoreboard players display name @e[tag=decacraft_scoreboard_1] decacraft_uuid_$(0)_$(1)_$(2)_$(3) [{text: ""}]
$scoreboard players display name @e[tag=decacraft_scoreboard_2] decacraft_uuid_$(0)_$(1)_$(2)_$(3) [{text: "Nombre: ", color: "gold", bold: true}, {selector: "@s", color: "green", bold: false}]
$scoreboard players display name @e[tag=decacraft_scoreboard_3] decacraft_uuid_$(0)_$(1)_$(2)_$(3) [{text: ""}]
$scoreboard players display name @e[tag=decacraft_scoreboard_4] decacraft_uuid_$(0)_$(1)_$(2)_$(3) [{text: "Dinero: ", color: "gold", bold: true}, {score: {name: "@s", objective: "money"}, color: "green", bold: false}, {text: "Ð", color: "green", bold: false}]
$scoreboard players display name @e[tag=decacraft_scoreboard_5] decacraft_uuid_$(0)_$(1)_$(2)_$(3) [{text: ""}]
$scoreboard players display name @e[tag=decacraft_scoreboard_6] decacraft_uuid_$(0)_$(1)_$(2)_$(3) [{text: "minecraft.garabanamas.es", color: "gray"}]