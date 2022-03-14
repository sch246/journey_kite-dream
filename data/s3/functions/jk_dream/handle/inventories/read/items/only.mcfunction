# 输入 scb (#slot)
setblock ~ 255 ~ air
setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{s3.clear:1b}}]}
function s3:jk_dream/handle/inventories/read/items/only/set_to_temp
# 清除Slot信息
data remove storage temp Item.Slot
# 放进方块
data modify block ~ 255 ~ Items[0] set from storage temp Item

function s3:jk_dream/handle/inventories/read/items/only/loot
clear @s knowledge_book{s3.clear:1b}
setblock ~ 255 ~ air