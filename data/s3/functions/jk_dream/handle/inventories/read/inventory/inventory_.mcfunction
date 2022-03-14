
execute unless block ~ ~ ~ shulker_box run setblock ~ ~ ~ shulker_box
#在y=~处放置潜影盒
data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:1b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:2b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:3b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:4b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:5b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:6b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:7b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:8b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}}]}
#转移物品
data modify block ~ ~ ~ Items[0] set from storage temp Inventory.Inventory[{Slot:0b}]
data modify block ~ ~ ~ Items[1] set from storage temp Inventory.Inventory[{Slot:1b}]
data modify block ~ ~ ~ Items[2] set from storage temp Inventory.Inventory[{Slot:2b}]
data modify block ~ ~ ~ Items[3] set from storage temp Inventory.Inventory[{Slot:3b}]
data modify block ~ ~ ~ Items[4] set from storage temp Inventory.Inventory[{Slot:4b}]
data modify block ~ ~ ~ Items[5] set from storage temp Inventory.Inventory[{Slot:5b}]
data modify block ~ ~ ~ Items[6] set from storage temp Inventory.Inventory[{Slot:6b}]
data modify block ~ ~ ~ Items[7] set from storage temp Inventory.Inventory[{Slot:7b}]
data modify block ~ ~ ~ Items[8] set from storage temp Inventory.Inventory[{Slot:8b}]
loot replace entity @s hotbar.0 9 mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}
data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:1b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:2b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:3b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:4b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:5b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:6b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:7b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:8b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:9b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:10b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:11b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:12b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:13b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:14b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:15b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:16b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:17b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:18b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:19b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:20b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:21b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:22b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:23b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:24b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:25b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:26b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}}]}
data modify storage temp tmpItems set from storage temp Inventory.Inventory
data remove storage temp tmpItems[{Slot:0b}]
data remove storage temp tmpItems[{Slot:1b}]
data remove storage temp tmpItems[{Slot:2b}]
data remove storage temp tmpItems[{Slot:3b}]
data remove storage temp tmpItems[{Slot:4b}]
data remove storage temp tmpItems[{Slot:5b}]
data remove storage temp tmpItems[{Slot:6b}]
data remove storage temp tmpItems[{Slot:7b}]
data remove storage temp tmpItems[{Slot:8b}]
data modify storage temp tmpItems[{Slot:9b}].Slot set value 0b
data modify storage temp tmpItems[{Slot:10b}].Slot set value 1b
data modify storage temp tmpItems[{Slot:11b}].Slot set value 2b
data modify storage temp tmpItems[{Slot:12b}].Slot set value 3b
data modify storage temp tmpItems[{Slot:13b}].Slot set value 4b
data modify storage temp tmpItems[{Slot:14b}].Slot set value 5b
data modify storage temp tmpItems[{Slot:15b}].Slot set value 6b
data modify storage temp tmpItems[{Slot:16b}].Slot set value 7b
data modify storage temp tmpItems[{Slot:17b}].Slot set value 8b
data modify storage temp tmpItems[{Slot:18b}].Slot set value 9b
data modify storage temp tmpItems[{Slot:19b}].Slot set value 10b
data modify storage temp tmpItems[{Slot:20b}].Slot set value 11b
data modify storage temp tmpItems[{Slot:21b}].Slot set value 12b
data modify storage temp tmpItems[{Slot:22b}].Slot set value 13b
data modify storage temp tmpItems[{Slot:23b}].Slot set value 14b
data modify storage temp tmpItems[{Slot:24b}].Slot set value 15b
data modify storage temp tmpItems[{Slot:25b}].Slot set value 16b
data modify storage temp tmpItems[{Slot:26b}].Slot set value 17b
data modify storage temp tmpItems[{Slot:27b}].Slot set value 18b
data modify storage temp tmpItems[{Slot:28b}].Slot set value 19b
data modify storage temp tmpItems[{Slot:29b}].Slot set value 20b
data modify storage temp tmpItems[{Slot:30b}].Slot set value 21b
data modify storage temp tmpItems[{Slot:31b}].Slot set value 22b
data modify storage temp tmpItems[{Slot:32b}].Slot set value 23b
data modify storage temp tmpItems[{Slot:33b}].Slot set value 24b
data modify storage temp tmpItems[{Slot:34b}].Slot set value 25b
data modify storage temp tmpItems[{Slot:35b}].Slot set value 26b
data modify block ~ ~ ~ Items append from storage temp tmpItems[]

loot replace entity @s inventory.0 27 mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}

data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}}]}
data modify block ~ ~ ~ Items[0].id set from storage temp Inventory.Inventory[{Slot:100b}].id
data modify block ~ ~ ~ Items[0].tag set from storage temp Inventory.Inventory[{Slot:100b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage temp Inventory.Inventory[{Slot:100b}].Count
loot replace entity @s armor.feet 1 mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}

data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}}]}
data modify block ~ ~ ~ Items[0].id set from storage temp Inventory.Inventory[{Slot:101b}].id
data modify block ~ ~ ~ Items[0].tag set from storage temp Inventory.Inventory[{Slot:101b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage temp Inventory.Inventory[{Slot:101b}].Count
loot replace entity @s armor.legs 1 mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}

data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}}]}
data modify block ~ ~ ~ Items[0].id set from storage temp Inventory.Inventory[{Slot:102b}].id
data modify block ~ ~ ~ Items[0].tag set from storage temp Inventory.Inventory[{Slot:102b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage temp Inventory.Inventory[{Slot:102b}].Count
loot replace entity @s armor.chest 1 mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}

data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}}]}
data modify block ~ ~ ~ Items[0].id set from storage temp Inventory.Inventory[{Slot:103b}].id
data modify block ~ ~ ~ Items[0].tag set from storage temp Inventory.Inventory[{Slot:103b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage temp Inventory.Inventory[{Slot:103b}].Count
loot replace entity @s armor.head 1 mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}

data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}}]}
data modify block ~ ~ ~ Items[0].id set from storage temp Inventory.Inventory[{Slot:-106b}].id
data modify block ~ ~ ~ Items[0].tag set from storage temp Inventory.Inventory[{Slot:-106b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage temp Inventory.Inventory[{Slot:-106b}].Count
loot replace entity @s weapon.offhand 1 mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}

clear @s knowledge_book{clear:1b}
#清除潜影盒
setblock ~ ~ ~ air