# Args:
#   vendor[string]
#   price[int @ 1..]

$scoreboard players add $(vendor) money $(price)
$tellraw $(vendor) [{text: "¡", color: "green"}, {selector: "@s", color: "gold"}, {text: " te ha comprado un objeto por ", color: "green"}, {text: "$(price)Ð", color: "gold"}, {text: "!", color: "green"}]
$playsound block.note_block.pling ui $(vendor) ~ ~ ~ 1 1 1