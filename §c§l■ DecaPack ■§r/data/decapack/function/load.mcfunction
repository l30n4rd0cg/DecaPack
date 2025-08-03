scoreboard objectives add money dummy Dinero
scoreboard objectives add decapack.in_shop dummy
scoreboard objectives add decapack.shop_page dummy
scoreboard objectives add tmp1 dummy
scoreboard objectives add tmp2 dummy

data modify storage decapack:version version set value "1.0.2f"
data modify storage decapack:version author set value "LeonardoClGo"
data modify storage decapack:version api_version set value 2
# Esto me lo generó Copilot xd
#data modify storage decapack:version date set value "2024-02-29"
#data modify storage decapack:version description set value "DecaPack is a datapack that adds a variety of features to enhance your Minecraft experience. It includes custom commands, items, and    blocks, providing a unique gameplay experience. This version includes various bug fixes and improvements to existing features."

schedule function decapack:display/load 1s