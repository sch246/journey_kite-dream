# 保存玩家背包
function s3:jk_dream/handle/inventories/write/inventory/all
data remove storage jk:player_data obj
data modify storage jk:player_data obj.state set from storage temp Inventory
scoreboard players operation addr tmp = @s uid
function s3:jk_dream/handle/io/set