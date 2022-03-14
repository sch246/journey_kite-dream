
execute unless block ~ ~ ~ shulker_box run setblock ~ ~ ~ shulker_box
data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:1b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:2b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:3b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:4b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:5b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:6b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:7b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:8b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:9b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:10b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:11b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:12b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:13b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:14b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:15b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:16b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:17b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:18b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:19b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:20b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:21b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:22b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:23b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:24b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:25b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}},{Slot:26b,id:"minecraft:knowledge_book",Count:1b,tag:{clear:1b}}]}
data modify block ~ ~ ~ Items append from storage temp Inventory.EnderItems[]
loot replace entity @s enderchest.0 27 mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}

execute unless data storage temp Inventory.EnderItems[{Slot:0b}] run loot replace entity @s enderchest.0 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:1b}] run loot replace entity @s enderchest.1 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:2b}] run loot replace entity @s enderchest.2 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:3b}] run loot replace entity @s enderchest.3 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:4b}] run loot replace entity @s enderchest.4 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:5b}] run loot replace entity @s enderchest.5 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:6b}] run loot replace entity @s enderchest.6 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:7b}] run loot replace entity @s enderchest.7 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:8b}] run loot replace entity @s enderchest.8 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:9b}] run loot replace entity @s enderchest.9 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:10b}] run loot replace entity @s enderchest.10 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:11b}] run loot replace entity @s enderchest.11 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:12b}] run loot replace entity @s enderchest.12 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:13b}] run loot replace entity @s enderchest.13 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:14b}] run loot replace entity @s enderchest.14 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:15b}] run loot replace entity @s enderchest.15 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:16b}] run loot replace entity @s enderchest.16 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:17b}] run loot replace entity @s enderchest.17 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:18b}] run loot replace entity @s enderchest.18 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:19b}] run loot replace entity @s enderchest.19 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:20b}] run loot replace entity @s enderchest.20 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:21b}] run loot replace entity @s enderchest.21 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:22b}] run loot replace entity @s enderchest.22 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:23b}] run loot replace entity @s enderchest.23 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:24b}] run loot replace entity @s enderchest.24 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:25b}] run loot replace entity @s enderchest.25 1 loot empty
execute unless data storage temp Inventory.EnderItems[{Slot:26b}] run loot replace entity @s enderchest.26 1 loot empty

#清除潜影盒
setblock ~ ~ ~ air