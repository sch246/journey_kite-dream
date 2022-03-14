
setblock ~ 255 ~ air
setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{s3.clear:1b}}]}
# 清除Slot信息
data remove storage temp Item.Slot
# 放进方块
data modify block ~ 255 ~ Items[0] set from storage temp Item

loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}

clear @s knowledge_book{s3.clear:1b}
setblock ~ 255 ~ air