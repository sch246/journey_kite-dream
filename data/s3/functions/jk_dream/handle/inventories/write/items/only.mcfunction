execute if score #slot tmp matches 0..8 run function s3:jk_dream/handle/inventories/write/items/only/hotbar
execute if score #slot tmp matches 9..17 run function s3:jk_dream/handle/inventories/write/items/only/backpack1
execute if score #slot tmp matches 18..26 run function s3:jk_dream/handle/inventories/write/items/only/backpack2
execute if score #slot tmp matches 27..35 run function s3:jk_dream/handle/inventories/write/items/only/backpack3
execute if score #slot tmp matches 100..103 run function s3:jk_dream/handle/inventories/write/items/only/equipment
execute if score #slot tmp matches -106 run data modify storage temp Items[{Slot:-106b}] set from entity @s Inventory[{Slot:-106b}]