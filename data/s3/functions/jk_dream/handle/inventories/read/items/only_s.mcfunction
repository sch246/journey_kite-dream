# 输入 scb (#index) storage temp Items
function s3:jk_dream/handle/inventories/read/items/only/set_to_temp
# 清除Slot信息
data remove storage temp Item.Slot
# 放进方块
data modify block ~ 255 ~ Items[0] set from storage temp Item

function s3:jk_dream/handle/inventories/read/items/only/loot
