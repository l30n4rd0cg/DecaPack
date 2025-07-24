# Args:
#   player[player]
#   amount[int>0]

$scoreboard players set @s tmp1 $(amount)

execute if score @s money < @s tmp1 run return run tellraw @s {text: "¡No tienes suficiente dinero!", color: "red"}

$execute unless entity $(player) run return run tellraw @s {text: "El jugador '$(player)' no existe.", color: "red"}

$tellraw @s [{text: "Has pagado $(amount)Ð a ", color: "gold"}, {selector: "@s", color: "green"}, {text: ".", color: "gold"}]
$tellraw $(player) [{text: "¡", color: "gold"}, {selector: "@s", color: "green"}, {text: " te ha pagado $(amount)Ð!", color: "gold"}]

$scoreboard players add $(player) money $(amount)
$scoreboard players remove @s money $(amount)