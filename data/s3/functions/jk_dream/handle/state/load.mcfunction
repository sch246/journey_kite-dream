# 读取玩家背包
scoreboard players operation addr tmp = @s uid
function s3:jk_dream/handle/io/get
data remove storage temp Inventory
data modify storage temp Inventory set from storage jk:player_data obj.state
function s3:jk_dream/handle/inventories/read/inventory/all